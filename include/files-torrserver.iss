; Rozszerzenia PotPlayer [Files]
 ; TorrServer.Marix
Source: "src\Extension\Data\run,1.vbs";   DestName: "run.vbs";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                       Components: "TOR"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - TorrServer.as";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "TOR"; Flags: ignoreversion 
Source: "src\Extension\Media\PlayParse\MediaPlayParse - TorrServer.ico";       DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "TOR"; Flags: ignoreversion 
Source: "{userappdata}\TorrServer\config-backup.zip";                          DestDir: "{userappdata}\TorrServer";                             Components: "TOR"; Flags: ignoreversion 
Source: "{userappdata}\TorrServer\config.db";                                  DestDir: "{userappdata}\TorrServer";                             Components: "TOR"; Flags: ignoreversion 
Source: "{userappdata}\TorrServer\msvcr100.dll";                               DestDir: "{userappdata}\TorrServer";                             Components: "TOR"; Flags: ignoreversion
Source: "{userappdata}\TorrServer\tsl.exe";                                    DestDir: "{userappdata}\TorrServer";                             Components: "TOR"; Flags:ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\Torrent.dpl";                  DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Components: "TOR"; Flags: ignoreversion 
Source: "https://github.com/YouROK/TorrServer/releases/download/MatriX.146/TorrServer-windows-amd64.exe"; DestName: "TorrServer-windows-amd64.exe"; DestDir: "{userappdata}\TorrServer"; Hash: "e6da1a3268350fc719a0a086c8c8d7307a02992eb757e5785d73849eab9a55ba"; \
Components: "TOR"; ExternalSize: 63_692_800; Flags: external download ignoreversion  