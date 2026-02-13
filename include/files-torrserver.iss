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
Source: "https://github.com/YouROK/TorrServer/releases/download/MatriX.137/TorrServer-windows-amd64.exe"; DestName: "TorrServer-windows-amd64.exe"; DestDir: "{userappdata}\TorrServer"; Hash: "038246f4bd3fd111b2e5aaa7b2e8e207e328f823b22d6b6a3a5efa4935d990a0"; \
Components: "TOR"; ExternalSize: 56_020_992; Flags: external download ignoreversion  