; Inne dodatkowe pliki [Files]
; Components Deno
Source: "https://github.com/denoland/deno/releases/download/v2.9.2/deno-x86_64-pc-windows-msvc.zip"; DestName: "deno-x86_64-pc-windows-msvc.zip"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; \
Hash: "5fe194d26ac5ef77fcc5288c2c438c7a0465f3b6180440ebf04092714bf2dcdf"; ExternalSize: 42_725_376; Components: "Deno"; Flags: external download extractarchive recursesubdirs ignoreversion
; Components FFmpeg
Source: "https://github.com/GyanD/codexffmpeg/releases/download/8.1.2/ffmpeg-8.1.2-essentials_build.7z"; DestName: "ffmpeg-8.1.2-essentials_build.7z"; DestDir: "{tmp}"; ExternalSize: "33_882_112"; \
Hash: "e25b682664025d49034c981afb4bae36238a40f29a3cc1c713ad9a8b5b3528f6"; Components: "FFmpeg"; Flags: ignoreversion external download extractarchive recursesubdirs createallsubdirs
; Icaros
Source: "https://github.com/Xanashi/Icaros/releases/download/v3.3.6/Icaros_v3.3.6.exe"; DestName: "Icaros.exe"; DestDir: "{tmp}"; Hash: "22e4d58e1c92aa48e11738d29c43fb6cdd80bdbce835f7029a46e91aa04fe8fd"; \
ExternalSize: 13_406_208; Components: "Icaros"; Flags: external download ignoreversion
Source: "InstallDir\uninstall_Icaros.bat";  DestDir: "{app}";                             Components: "Icaros"; Flags: ignoreversion
Source: "InstallDir\reg\delete_icaros.reg"; DestDir: "{app}\reg";                         Components: "Icaros"; Flags: ignoreversion
; madVR
Source: "{tmp}\madVR.7z";                   DestDir: "{tmp}";                             Components: "madVR"; Flags: deleteafterinstall
Source: "InstallDir\delete madVR.bat";      DestDir: "{app}";                             Components: "madVR"; Flags: ignoreversion
; MediaInfo 
Source: "src\Module\MI\MediaInfo.exe";      DestDir: "{autopf}\DAUM\PotPlayer\Module\MI"; Components: "minfo"; Flags: ignoreversion
Source: "src\Module\MI\MediaInfo.dll";      DestDir: "{autopf}\DAUM\PotPlayer\Module\MI"; Components: "minfo"; Flags: ignoreversion
; MPC Video Renderer
Source: "src\Module\MpcVideoRenderer64.ax"; DestDir: "{autopf}\DAUM\PotPlayer\Module";    Tasks: "extmpcvr";  Flags: regserver noregerror ignoreversion
; Sanear
Source: "src\Module\sanear64.ax";           DestDir: "{autopf}\DAUM\PotPlayer\Module";    Tasks: "renaudio\sanear"; Flags: regserver noregerror ignoreversion
