; Inne dodatkowe pliki [Files]
; Components Deno
Source: "https://github.com/denoland/deno/releases/download/v2.7.6/deno-x86_64-pc-windows-msvc.zip"; DestName: "deno-x86_64-pc-windows-msvc.zip"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; \
Hash: "5f61e0302f8e17bbb52ce46aa33a560f1fc15152312c452d3c24e61d72196fdd"; ExternalSize: 48_861_184; Components: "Deno"; Flags: external download extractarchive recursesubdirs ignoreversion
; Components FFmpeg
Source: "https://github.com/GyanD/codexffmpeg/releases/download/8.1/ffmpeg-8.1-essentials_build.7z"; DestName: "ffmpeg-8.1-essentials_build.7z"; DestDir: "{tmp}"; ExternalSize: "33_546_240"; \
Hash: "9b299a21fc1ca36ac22e4911f8958404c228e4059583c4651743122a8d0a7e56"; Components: "FFmpeg"; Flags: ignoreversion external download extractarchive recursesubdirs createallsubdirs
; Icaros
Source: "https://github.com/Xanashi/Icaros/releases/download/v3.3.4b1/Icaros_v3.3.4_b1.exe"; DestName: "Icaros.exe"; DestDir: "{tmp}"; Hash: "608ff4b0508f31e3d85810141cbb56b57304a385fc26cce8a9b4b2ad95c99c64"; \
ExternalSize: 13_201_408; Components: "Icaros"; Flags: external download ignoreversion
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
