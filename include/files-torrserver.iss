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
Source: "https://github.com/YouROK/TorrServer/releases/download/MatriX.145/TorrServer-windows-amd64.exe"; DestName: "TorrServer-windows-amd64.exe"; DestDir: "{userappdata}\TorrServer"; Hash: "407532e5da6e7676ad274489b322d28f8f1ae7d2e12032e9d6acfadd9b945006"; \
Components: "TOR"; ExternalSize: 63_545_344; Flags: external download ignoreversion  