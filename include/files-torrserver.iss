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
Source: "https://github.com/YouROK/TorrServer/releases/download/MatriX.141/TorrServer-windows-amd64.exe"; DestName: "TorrServer-windows-amd64.exe"; DestDir: "{userappdata}\TorrServer"; Hash: "b35ad18714614db1e88049a0054453349353989d563ecc3f2eb7a9751d3a61b7"; \
Components: "TOR"; ExternalSize: 74_006_528; Flags: external download ignoreversion  