/*
	TorrServer media parse (magnet only)
*/

string GetTitle()
{
	return "TorrServer";
}

string GetVersion()
{
	return "1";
}

string GetDesc()
{
	return "https://github.com/YouROK/TorrServer";
}

string GetStatus()
{
	return GetTitle();
}

void OnInitialize()
{
	//
}

bool playlistCancel = false;

string torrServerUrl = "http://127.0.0.1:8090";

void OnFinalize()
{
	HostUrlGetString(torrServerUrl + "/shutdown");
}

bool useDebugPrint = false;

void DebugPrint(string text)
{
	if (useDebugPrint) HostOpenConsole();
	if (useDebugPrint) HostPrintUTF8("[TorrServer] " + text);
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

string GetTslPath()
{
	string path = GetPlayerDir() + "Extension\\Data\\TorrServer\\tsl.exe";
	if (!FileExist(path))
	{
		path = GetPlayerDir() + "Extention\\Data\\TorrServer\\tsl.exe"; // for some older versions...
		if (!FileExist(path))
		{
			return "";
		}
	}
	return path;
}

string ExtractNameFromPath(string path)
{
	int p = path.find("&dn=");
	if (p < 0) p = path.find("?dn=");
	if (p > -1)
	{
		path = path.substr(p + 4);
		p = path.find("&");
		if (p > -1) path = path.substr(0, p - 1);
		p = path.findLast("/");
		if (p > -1) path = path.substr(0, p - 1);
	}
	else
	{
		p = path.findLast("/");
		if (p > -1)
		{
			path = path.substr(p + 1);
			p = path.findLast("&");
			if (p < 0) p = path.findLast("?");
			p = path.find("=", p);
			if (p > -1) path = path.substr(p + 1);
		}
		else
		{
			p = path.findLast("\\");
			if (p > -1) path = path.substr(p + 1);
		}
	}
	path = HostUrlDecode(path);
	path.replace("+", " ");
	path.replace("_", " ");
	while (true)
	{
		if (path.replace("  ", " ") == 0) break;
	}
	return path.Trim();
}

bool PlayitemCheck(const string &in path)
{
	path.MakeLower();
	if (path.find(":8090") >= 0) return true;
	return false;
}

string PlayitemParse(const string &in path, dictionary &MetaData, array<dictionary> &QualityList)
{
	string RunPath = GetRunPath();
	string TslPath = GetTslPath();

	uintptr pTsl = HostFileOpen(TslPath);
	if (pTsl == 0)
	{
		TslPath = "%APPDATA%\\TorrServer\\tsl.exe";
	}
	else
	{
		HostFileClose(pTsl);
	}

	HostExecuteProgram("cscript", "//B //NoLogo \"" + RunPath + "\" \"" + TslPath + "\"");

	string url = path;
	return url;
}

bool PlaylistCheck(const string &in path)
{
	DebugPrint("PlaylistCheck: " + path);
	path.MakeLower();
	if (path.find("magnet:") >= 0) return true;
	return false;
}

array<dictionary> PlaylistParse(const string &in path)
{
	string RunPath = GetRunPath();
	string TslPath = GetTslPath();

	uintptr pTsl = HostFileOpen(TslPath);
	if (pTsl == 0)
	{
		TslPath = "%APPDATA%\\TorrServer\\tsl.exe";
	}
	else
	{
		HostFileClose(pTsl);
	}

	HostExecuteProgram("cscript", "//B //NoLogo \"" + RunPath + "\" \"" + TslPath + "\"");

	path.replace("potplayer:", "");
	path.replace("http://", "");

	DebugPrint("PlayerDir: " + GetPlayerDir());
	DebugPrint("RunPath: " + RunPath);
	DebugPrint("TslPath: " + TslPath);
	DebugPrint("PlaylistParse: " + path);

	playlistCancel = false;
	array<dictionary> playlist;
	dictionary playlistItem;
	playlistItem["title"] = "< TRY AGAIN > " + ExtractNameFromPath(path);
	playlistItem["url"] = path;
	playlist.insertLast(playlistItem);
	HostIncTimeOut(5 * 60 * 1000);

	uintptr pHttp;
	string postData, getData;
	postData = "{\"action\": \"add\",\"link\":\"" + path + "\",\"save_to_db\":false}";
	DebugPrint("HostOpenHTTP(\"" + torrServerUrl + "/torrents" + "\", \"" + postData + "\")");
	pHttp = HostOpenHTTP(torrServerUrl + "/torrents", "", "", postData);
	if (HostGetStatusHTTP(pHttp) != 200)
	{
		DebugPrint("Code: " + formatInt(HostGetStatusHTTP(pHttp)));
		HostCloseHTTP(pHttp);
		return playlist;
	}
	else
	{
		DebugPrint("Code: 200");
	}
	getData = HostGetContentHTTP(pHttp);
	DebugPrint("Content: " + getData);
	HostCloseHTTP(pHttp);
	if (getData.isEmpty()) return playlist;

	int i = 0;
	int j = 0;

	string hash;
	JsonReader reader;
	JsonValue root, value;
	if (reader.parse(getData, root) && root.isObject())
	{
		value = root["hash"];
		if (value.isString())
		{
			hash = value.asString();
			DebugPrint("Hash: " + hash);
		}
	}
	if (hash.isEmpty()) return playlist;

	getData = "";

	while (true)
	{
		if (playlistCancel) return playlist;
		postData = "{\"action\": \"get\",\"hash\":\"" + hash + "\"}";
		DebugPrint("HostOpenHTTP(\"" + torrServerUrl + "/torrents" + "\", \"" + postData + "\")");
		pHttp = HostOpenHTTP(torrServerUrl + "/torrents", "", "", postData);
		if (HostGetStatusHTTP(pHttp) != 200)
		{
			DebugPrint("Code: " + formatInt(HostGetStatusHTTP(pHttp)));
			HostCloseHTTP(pHttp);
			i++;
			if (i > 3) return playlist;
			HostSleep(1000);
			continue;
		}
		else
		{
			DebugPrint("Code: 200");
		}
		getData = HostGetContentHTTP(pHttp);
		DebugPrint("Content: " + getData);
		HostCloseHTTP(pHttp);
		if (getData.isEmpty())
		{
			i++;
			if (i > 3) return playlist;
			HostSleep(1000);
			continue;
		}

		i = 0;

		if (reader.parse(getData, root) && root.isObject())
		{
			JsonValue items = root["file_stats"];
			DebugPrint("Files:");
			if (items.isArray())
			{
				if (items.size() > 0) playlist.resize(0);
				for (int x = 0; x < items.size(); x++)
				{
					dictionary playlistItem;
					JsonValue item;
					item = items[x];
					value = item["path"];
					if (value.isString())
					{
						string title = value.asString();
						int p = title.findLast("/");
						if (p > -1) title = title.substr(p + 1);
						if (!HostCheckMediaFile(title, true, true, false)) continue;
						DebugPrint("Title: " + title);
						playlistItem["title"] = title;

						int id = 0;
						value = item["id"];
						if (value.isInt()) id = value.asInt();
						if (id == 0) continue;

						string link = HostUrlEncode(title);
						link = torrServerUrl + "/stream/" + link + "?link=" + hash + "&index=" + id + "&play";
						DebugPrint("Url: " + link);
						playlistItem["url"] = link;
					}
					playlist.insertLast(playlistItem);
				}
				if (playlist.length() == 0)
				{
					dictionary playlistItem;
					playlistItem["title"] = "< TRY LATER > " + ExtractNameFromPath(path);
					playlistItem["url"] = path;
					playlist.insertLast(playlistItem);
				}
			}
			else
			{
				j++;
				if (j > 10) return playlist;
				HostSleep(1000);
				continue;
			}
		}
		else
		{
			j++;
			if (j > 10) return playlist;
			HostSleep(1000);
			continue;
		}
		break;
	}
	return playlist;
}

void PlaylistCancel()
{
	playlistCancel = true;
}