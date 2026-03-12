; Rozszerzenia PotPlayer [Files]
; AceStream
Source: "src\Extension\Data\run,2.vbs";   DestName: "run.vbs";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                       Components: "ACE"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - AceStream.as";         DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "ACE"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - AceStream.ico";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\.ACEStream\playerconf.pickle";                          DestDir: "{userappdata}\.ACEStream";                             Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\playerconf.pickle";                           DestDir: "{userappdata}\AceStream";                              Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\ResetSettings.vbs";                           DestDir: "{userappdata}\AceStream";                              Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\AceTV.dpl";                    DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\acestream.conf";                       DestDir: "{userappdata}\AceStream\engine";                       Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\ace_engine.exe";                       DestDir: "{userappdata}\AceStream\engine";                       Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\chrome";                               DestDir: "{userappdata}\AceStream\engine";                       Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\firefox";                              DestDir: "{userappdata}\AceStream\engine";                       Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\python27.dll";                         DestDir: "{userappdata}\AceStream\engine";                       Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\data\schema_sdb_v6.sql";               DestDir: "{userappdata}\AceStream\engine\data";                  Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\data\images\engine.ico";               DestDir: "{userappdata}\AceStream\engine\data\images";           Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\data\lang\en_EN.lang";                 DestDir: "{userappdata}\AceStream\engine\data\lang";             Components: "ACE"; Flags: ignoreversion
Source: "{userappdata}\AceStream\engine\data\lang\ru_RU.lang";                 DestDir: "{userappdata}\AceStream\engine\data\lang";             Components: "ACE"; Flags: ignoreversion
Source: "{tmp}\lib.7z";                                                        DestDir: "{tmp}";                                                Components: "ACE"; Flags: deleteafterinstall
