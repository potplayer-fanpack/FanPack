; Inne dodatkowe pliki [Files]
; Components Deno
Source: "https://github.com/denoland/deno/releases/download/v2.9.5/deno-x86_64-pc-windows-msvc.zip"; DestName: "deno-x86_64-pc-windows-msvc.zip"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; \
Hash: "171efab55ac6b9881fd53ee4c20f8bf3bb1340ffc618483746909014db12216a"; ExternalSize: 42_696_704; Components: "Deno"; Flags: external download extractarchive recursesubdirs ignoreversion
; Components FFmpeg
Source: "https://github.com/GyanD/codexffmpeg/releases/download/9.0.1/ffmpeg-9.0.1-essentials_build.7z"; DestName: "ffmpeg-9.0.1-essentials_build.7z"; DestDir: "{tmp}"; ExternalSize: "34_377_728"; \
Hash: "49a73bdf0850092a252ac4641d922f3048d63ed113e196cc65ce1e4f7fb33e85"; Components: "FFmpeg"; Flags: ignoreversion external download extractarchive recursesubdirs createallsubdirs
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
