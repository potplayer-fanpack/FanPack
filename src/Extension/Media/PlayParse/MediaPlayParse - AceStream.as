/*
	AceStream media parse (torrent-tv)
*/

string GetTitle()
{
	return "AceStream";
}

string GetVersion()
{
	return "1";
}

string GetDesc()
{
	return "https://acestream.org";
}

string GetStatus()
{
	return GetTitle();
}

bool FileExist(string path)
{
	uintptr pFile = HostFileOpen(path);
	if (pFile == 0)
	{
		return false;
	}
	else
	{
		HostFileClose(pFile);
		return true;
	}
}

string playerDir = "";

string GetPlayerDir()
{
	if (!playerDir.isEmpty()) return playerDir;

	string dir = ".\\";

	if (!FileExist(dir + "PotPlayerMini.exe"))
	{
		if (!FileExist(dir + "PotPlayerMini64.exe"))
		{
			dir = "";
		}
	}

	if (!dir.isEmpty())
	{
		playerDir = dir;
		return playerDir;
	}

	string path = "";
	string mark = HostHashMD5(formatInt(HostGetTickCount()));
	string xml  = HostExecuteProgram("cmd.exe", "/A /Q /C (@ECHO " + mark + ") && (WMIC.exe PROCESS GET CommandLine, ExecutablePath, ParentProcessId, ProcessId /FORMAT:RAWXML)");

	XMLDocument doc;

	if (doc.Parse(xml))
	{
		uint playerId = 0;
		array<uint> ids;
		array<string> paths;

		XMLElement root = doc.RootElement();
		if (root.isValid() && (root.Name() == "COMMAND"))
		{
			XMLElement results = root.FirstChildElement("RESULTS");
			while (results.isValid())
			{
				XMLElement cim = results.FirstChildElement("CIM");
				if (cim.isValid())
				{
					XMLElement instance = cim.FirstChildElement("INSTANCE");
					while (instance.isValid())
					{
						string commandLine = "";
						string executablePath = "";

						uint parentProcessId = 0;
						uint processId = 0;

						XMLElement value;

						XMLElement property = instance.FirstChildElement("PROPERTY");
						while (property.isValid())
						{
							XMLAttribute attr = property.FindAttribute("NAME");
							if (attr.isValid())
							{
								string attrName = attr.Value();

								if (attrName == "CommandLine")
								{
									value = property.FirstChildElement("VALUE");
									if (value.isValid()) commandLine = value.asString();
								}
								else if (attrName == "ExecutablePath")
								{
									value = property.FirstChildElement("VALUE");
									if (value.isValid()) executablePath = value.asString();
								}
								else if (attrName == "ParentProcessId")
								{
									value = property.FirstChildElement("VALUE");
									if (value.isValid()) parentProcessId = value.asUInt();
								}
								else if (attrName == "ProcessId")
								{
									value = property.FirstChildElement("VALUE");
									if (value.isValid()) processId = value.asUInt();
								}
							}

							property = property.NextSiblingElement();
						}

						if (!commandLine.isEmpty() && !executablePath.isEmpty() && (parentProcessId != 0) && (processId != 0))
						{
							if ((playerId == 0) && (commandLine.find(mark) > -1))
							{
								playerId = parentProcessId;
							}

								ids.insertLast(processId);
								paths.insertLast(executablePath);
							}

							instance = instance.NextSiblingElement();
						}
					}

					results = results.NextSiblingElement();
				}

				XMLElement element = doc.FirstChildElement("RESULTS");
			}

			if (playerId != 0)
			{
				int n = ids.find(playerId);
				if (n > -1) path = paths[n];
			}
		}

	if (FileExist(path))
	{
		playerDir = path.substr(0, path.findLast("\\") + 1);
	}
	else
	{
		return "";
	}
	return playerDir;
}

string GetRunPath()
{
	string path = GetPlayerDir() + "Extension\\Data\\run.vbs";
	if (!FileExist(path))
	{
		path = GetPlayerDir() + "Extention\\Data\\run.vbs"; // for some older versions...
		if (!FileExist(path))
		{
			return "";
		}
	}
	return path;
}

string GetAcePath()
{
	string path = GetPlayerDir() + "Extension\\Data\\AceStream\\engine\\ace_engine.exe";
	if (!FileExist(path))
	{
		path = GetPlayerDir() + "Extention\\Data\\AceStream\\engine\\ace_engine.exe"; // for some older versions...
		if (!FileExist(path))
		{
			return "";
		}
	}
	return path;
}

bool PlayitemCheck(const string &in path)
{
	path.MakeLower();
	if (path.find("acestream:") >= 0) return true;
	if (path.find(":6878") >= 0) return true;
	return false;
}

string PlayitemParse(const string &in path, dictionary &MetaData, array<dictionary> &QualityList)
{
	string RunPath = GetRunPath();
	string AcePath = GetAcePath();

	uintptr pAce = HostFileOpen(AcePath);
	if (pAce == 0)
	{
		AcePath = "%APPDATA%\\AceStream\\engine\\ace_engine.exe";
	}
	else
	{
		HostFileClose(pAce);
	}

	HostExecuteProgram("cscript", "//B //NoLogo \"" + RunPath + "\" \"" + AcePath + "\" --live-cache-type memory --live-mem-cache-size 268435456");

	string url = path;
	if (path.find("acestream:") == 0)
	{
		path.replace("acestream://", "");
		url = "http://127.0.0.1:6878/ace/getstream?id=" + path;
		HostIncTimeOut(5000);
	}
	else
	{
		url = path;
		HostIncTimeOut(5000);
	}
	return url;
}