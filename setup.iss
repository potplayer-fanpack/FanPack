#pragma option -v+
#pragma verboselevel 9

#define localize = "true"

#define MyAppName "FanPack64"
#define MyBrandName "FanPack64"
#define MyAppVersion "3.9.7029"
#define MyAppPublisher "PotPlayer Club"
#define MyAppURL "https://github.com/potplayer-fanpack/FanPack"
#define MyAppExeName "MyProg-x64.exe"

#define keyPM "Software\Daum\PotPlayerMini64"
#define keyPMS "Software\Daum\PotPlayerMini64\Settings"
#define keyMVR "Software\MPC-BE Filters\MPC Video Renderer"


[Setup]
AppId                              = {#MyAppName}
AppName                            = {#MyAppName}
AppVerName                         = {#MyAppName} v{#MyAppVersion}
AppVersion                         = {#MyAppVersion}
AppPublisher                       = {#MyAppPublisher}
AppPublisherURL                    = {#MyAppURL}
AppSupportURL                      = {#MyAppURL}
AppUpdatesURL                      = {#MyAppURL}
DefaultDirName                     = {autopf}\{#MyAppName}
DefaultGroupName                   = {#MyAppName}
AppCopyright                       = Copyright © {#MyAppPublisher} 2014-2026
AllowNoIcons                       = yes
OutputDir                          = bin
SourceDir                          = .
Compression                        = lzma2/ultra
InternalCompressLevel              = ultra
SolidCompression                   = yes
SetupIconFile                      = embedded\PotPlayer.ico
ShowTasksTreeLines                 = yes
WizardStyle                        = modern dynamic polar
WizardSmallImageFile               = embedded\WizardSmallImage.png
Uninstallable                      = yes
OutputBaseFilename                 = {#MyAppName}_v{#MyAppVersion}
ArchitecturesAllowed               = x64compatible
ArchitecturesInstallIn64BitMode    = x64compatible
DisableDirPage                     = yes
DisableProgramGroupPage            = yes
UsePreviousLanguage                = no
UsePreviousPrivileges              = no
PrivilegesRequired                 = admin
PrivilegesRequiredOverridesAllowed = 
UsedUserAreasWarning               = yes
VersionInfoVersion                 = {#MyAppVersion}.0
SetupLogging                       = yes
ArchiveExtraction                  = full
InfoBeforeFile                     = InstallDir\Changelog.txt


[Languages]
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
#if localize == "true"
Name: "en"; MessagesFile: "compiler:Default.isl"
#endif


[LangOptions]
DialogFontName=Tahoma
DialogFontSize=8
DialogFontBaseScaleHeight=13
DialogFontBaseScaleWidth=6

#include "include/custom_messages.iss"


[Messages]
BeveledLabel= 29.04.2026


[Tasks]
#if localize == "true"
Name: "skipsettings";         Description: "{cm:tsk_skipsettings}";               GroupDescription: "{cm:tsk_group0}"; Flags: unchecked; Check: IsUpdate
; Integracja
Name: "desktopicon";          Description: "{cm:tsk_desktopicon}";                GroupDescription: "{cm:tsk_group1}"; Components: TOR ACE YTDLP
Name: "minfo1";               Description: "{cm:tsk_minfo1}";                     GroupDescription: "{cm:tsk_group1}"; Components: "minfo"
Name: "addon";                Description: "{cm:tsk_addon}";                      GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "addon\1";              Description: "{cm:tsk_addon_1}";                    GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
Name: "addon\2";              Description: "{cm:tsk_addon_2}";                    GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
Name: "navig";                Description: "{cm:tsk_opendef_navig}";              GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "navig\a";              Description: "{cm:tsk_opendef_navig_a}";            GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
Name: "navig\b";              Description: "{cm:tsk_opendef_navig_b}";            GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
Name: "navig\disable_zoom";   Description: "{cm:tsk_opendef_navig_disable_zoom}"; GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "navig\large_frame";    Description: "{cm:tsk_opendef_navig_large_frame}";  GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "navig\no_close";       Description: "{cm:tsk_opendef_navig_no_close}";     GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "powerststus";          Description: "{cm:tsk_powerststus}";                GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
Name: "powerststus\a";        Description: "{cm:tsk_powerststus_a}";              GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
Name: "powerststus\b";        Description: "{cm:tsk_powerststus_a}";              GroupDescription: "{cm:tsk_group1}"; Flags: exclusive unchecked
; Listy, Audio, Wideo, Zakładki...
Name: "playlist";             Description: "{cm:tsk_playlist}";                   GroupDescription: "{cm:tsk_group2}"
Name: "bookmark";             Description: "{cm:tsk_bookmark}";                   GroupDescription: "{cm:tsk_group2}"; Flags: unchecked
Name: "savedesktop";          Description: "{cm:tsk_savedesktop}";                GroupDescription: "{cm:tsk_group2}"; Flags: unchecked
Name: "saveformat\bmp";       Description: ".BMP";                                GroupDescription: "{cm:tsk_group2}"; Flags: exclusive unchecked
Name: "saveformat\jpg";       Description: ".JPG";                                GroupDescription: "{cm:tsk_group2}"; Flags: exclusive unchecked
Name: "saveformat\png";       Description: ".PNG";                                GroupDescription: "{cm:tsk_group2}"; Flags: exclusive
Name: "saveformat\webp";      Description: ".WEBP";                               GroupDescription: "{cm:tsk_group2}"; Flags: exclusive
Name: "savegalery";           Description: "{cm:tsk_savegalery}";                 GroupDescription: "{cm:tsk_group2}"
Name: "dispasthumb";          Description: "{cm:tsk_dispasthumb}";                GroupDescription: "{cm:tsk_group2}"
Name: "loadurl";              Description: "{cm:tsk_loadurl}";                    GroupDescription: "{cm:tsk_group2}"
Name: "rememberlist";         Description: "{cm:tsk_rememberlist}";               GroupDescription: "{cm:tsk_group2}"
Name: "subsave";              Description: "{cm:tsk_subsave}";                    GroupDescription: "{cm:tsk_group2}"
Name: "interlinia";           Description: "{cm:tsk_interlinia}";                 GroupDescription: "{cm:tsk_group2}"
Name: "trans_sub";            Description: "{cm:tsk_trans_sub}";                  GroupDescription: "{cm:tsk_group2}"
; Dodatkowe ustawienia audio
Name: "extaudio";             Description: "{cm:tsk_extaudio}";                   GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "audsave";              Description: "{cm:tsk_audsave}";                    GroupDescription: "{cm:tsk_group3}"
Name: "renaudio";             Description: "{cm:tsk_renaudio}";                   GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "renaudio\auto";        Description: "{cm:tsk_renaudio_auto}";              GroupDescription: "{cm:tsk_group3}"; Flags: exclusive
Name: "renaudio\directsound"; Description: "{cm:tsk_renaudio_directsound}";       GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "renaudio\wasapi";      Description: "{cm:tsk_renaudio_wasapi}";            GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "renaudio\sanear";      Description: "{cm:tsk_renaudio_sanear}";            GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "crossfeed";            Description: "{cm:tsk_crossfeed}";                  GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "virtual_dolby";        Description: "{cm:tsk_virtual_dolby}";              GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
; Dodatkowe ustawienia wideo
Name: "renderer";             Description: "{cm:tsk_renderer}";                   GroupDescription: "{cm:tsk_group4}";
Name: "renderer\auto";        Description: "{cm:tsk_renderer_auto}";              GroupDescription: "{cm:tsk_group4}"; Flags: exclusive
Name: "renderer\d3d9";        Description: "{cm:tsk_renderer_d3d9}";              GroupDescription: "{cm:tsk_group4}"; Flags: exclusive unchecked
Name: "renderer\d3d11";       Description: "{cm:tsk_renderer_d3d11}";             GroupDescription: "{cm:tsk_group4}"; Flags: exclusive unchecked
Name: "renderer\madVR";       Description: "{cm:tsk_renderer_m}";                 GroupDescription: "{cm:tsk_group4}"; Flags: exclusive unchecked; Components: "madVR"
Name: "extmpcvr";             Description: "{cm:tsk_extmpcvr}";                   GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "ffmpeg";               Description: "{cm:tsk_ffmpeg}";                     GroupDescription: "{cm:tsk_group4}"
Name: "hwfirst";              Description: "{cm:tsk_hwfirst}";                    GroupDescription: "{cm:tsk_group4}"
Name: "resizer";              Description: "{cm:tsk_resizer}";                    GroupDescription: "{cm:tsk_group4}"
Name: "sharpen";              Description: "{cm:tsk_sharpen}";                    GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "deband";               Description: "{cm:tsk_deband}";                     GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "levelfix";             Description: "{cm:tsk_levelfix}";                   GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "HqRgbConv";            Description: "{cm:tsk_HqRgbConv}";                  GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "ThreadConv";           Description: "{cm:tsk_ThreadConv}";                 GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "playpriority";         Description: "{cm:tsk_playpriority}";               GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "mvc3d";                Description: "{cm:tsk_mvc3d}";                      GroupDescription: "{cm:tsk_group4}"; Flags: unchecked
Name: "remposvideo";          Description: "{cm:tsk_remposvideo}";                GroupDescription: "{cm:tsk_group4}"
#endif


[Types]
#if localize == "true"
Name: "tweak";                Description: "{cm:comp_tweak}"
Name: "full";                 Description: "{cm:comp_full}"
Name: "compact";              Description: "{cm:comp_compact}"
Name: "custom";               Description: "{cm:comp_custom}"; Flags: iscustom
#endif


[Components]
#if localize == "true"
Name: "program";              Description: "{cm:comp_program}"; Types: tweak full compact custom; Flags: fixed
Name: "madVR";                Description: "{cm:comp_madVR}";   Types: tweak full custom
; Check: not IsUpdate and not IsmadVRInstalled
Name: "YTDLP";                Description: "{cm:comp_YTDLP}";   Types: tweak full custom
Name: "FFmpeg";               Description: "{cm:comp_FFmpeg}";  Types: tweak full custom
Name: "EXT";                  Description: "{cm:comp_ext}";     Types: tweak full custom
Name: "Deno";                 Description: "{cm:comp_Deno}";    Types: tweak full custom
Name: "ACE";                  Description: "{cm:comp_ACE}";     Types: custom
Name: "TOR";                  Description: "{cm:comp_TOR}";     Types: custom
Name: "Icaros";               Description: "{cm:comp_icaros}";  Types: custom; Check: not IsUpdate and not IsIcarosInstalled
Name: "minfo";                Description: "{cm:comp_minfo}";   Types: custom
#endif


[Icons]
#if localize == "true"
Name: "{group}\Addons Mozilla PotPlayer YouTube.url"; Filename: "https://addons.mozilla.org/pl/firefox/addon/potplayer-youtube-shortcut/"; Tasks: "addon\1"
Name: "{group}\Addons Chrome PotPlayer YouTube.url";  Filename: "https://chrome.google.com/webstore/search/potplayer";                     Tasks: "addon\2"
Name: "{group}\CzytajTo";                             Filename: "{app}\CzytajTo.txt"
Name: "{group}\Licencja";                             Filename: "{app}\Licencja.txt"
Name: "{group}\Reset madVR";                          Filename: "{autopf}\madVR\restore default settings.bat";
Name: "{group}\FanPack64 w sieci";                    Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyBrandName}}"; Filename: "{uninstallexe}"
Name: "{group}\TorrServer Launcher";                  Filename: "{userappdata}\TorrServer\tsl.exe"; Comment: "{cm:msg_streamtor}";                             Components: "TOR"
Name: "{group}\TorrServer\Rozszerzenie dla Firefox";  Filename: "https://addons.mozilla.org/pl/firefox/addon/torrserver-adder/";                               Components: "TOR" 
Name: "{group}\TorrServer\Rozszerzenie dla Chrome";   Filename: "https://chrome.google.com/webstore/detail/torrserver-adder/ihphookhabmjbgccflngglmidjloeefg"; Components: "TOR"
Name: "{group}\AceStream\AceStream Engine";           Filename: "{userappdata}\AceStream\engine\ace_engine.exe"; Parameters: "--live-cache-type memory --live-mem-cache-size 268435456"; IconFilename: "{userappdata}\AceStream\engine\data\images\engine.ico"; Comment: "Streaming torrent-tv przez HTTP"; Components: "ACE" 
Name: "{group}\AceStream\Reset ustawień...";          Filename: "{userappdata}\AceStream\ResetSettings.vbs"; IconFilename: "{userappdata}\AceStream\engine\data\images\engine.ico"; Comment: "Streaming torrent-tv przez HTTP";               Components: "ACE"  
Name: "{group}\Download Video";                       Filename: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.bat"; IconFilename: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.exe"; Comment: "{cm:msg_downvideos}"; Components: "YTDLP"
Name: "{autodesktop}\TorrServer Launcher";            Filename: "{userappdata}\TorrServer\tsl.exe"; Comment: "{cm:msg_streamtor}"; Components: "TOR"; Tasks: "desktopicon" 
Name: "{autodesktop}\Download Video";                 Filename: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.bat"; IconFilename: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.exe"; Comment: "{cm:msg_downvideos}"; Components: "YTDLP"; Tasks: "desktopicon"
Name: "{userdesktop}\AceStream Engine";               Filename: "{userappdata}\AceStream\engine\ace_engine.exe"; Parameters: "--live-cache-type memory --live-mem-cache-size 268435456"; IconFilename: "{userappdata}\AceStream\engine\data\images\engine.ico"; Comment: "Streaming torrent-tv przez HTTP"; Components: "ACE"; Tasks: "desktopicon"
#endif


[Files]
; Core program files
Source: "InstallDir\Changelog.txt";                   DestDir: "{app}"; DestName: "Lista zmian.txt";         Components: "program"; Flags: ignoreversion
Source: "InstallDir\License.txt";                     DestDir: "{app}"; DestName: "Licencja.txt";            Components: "program"; Flags: ignoreversion
Source: "InstallDir\ReadMe.txt";                      DestDir: "{app}"; DestName: "CzytajTo.txt";            Components: "program"; Flags: isreadme
Source: "InstallDir\LGPL.TXT";                        DestDir: "{app}";                                      Components: "program"; Flags: ignoreversion
Source: "InstallDir\MyProg-x64.exe";                  DestDir: "{app}";                                      Components: "program"; Flags: ignoreversion
Source: "InstallDir\AviSynth\*";                      DestDir: "{app}\AviSynth";                             Components: "program"; Flags: ignoreversion
Source: "InstallDir\PxShader\*";                      DestDir: "{app}\PxShader";                             Components: "program"; Flags: ignoreversion
Source: "InstallDir\PotPlayerMini64.dpl";             DestDir: "{app}";                                      Components: "program"; Flags: ignoreversion
Source: "InstallDir\reg\pot64_settings.reg";          DestDir: "{tmp}";                                      Components: "program"; Flags: ignoreversion deleteafterinstall
Source: "InstallDir\reg\delete_pot_progs_hkcu.reg";   DestDir: "{app}\reg";                                  Components: "program"; Flags: ignoreversion
Source: "src\History\Polish.txt";                     DestDir: "{autopf}\DAUM\PotPlayer\History";            Components: "program"; Flags: ignoreversion uninsneveruninstall; Languages: "pl"
Source: "src\Language\Polish.ini";                    DestDir: "{autopf}\DAUM\PotPlayer\Language";           Components: "program"; Flags: ignoreversion uninsneveruninstall; Languages: "pl"
; OpenCodec
Source: "src\Module\libmfxsw64.dll";                  DestDir: "{autopf}\DAUM\PotPlayer\Module";             Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\OpenCodec\OpenCodecUnity64.dll";  DestDir: "{autopf}\DAUM\PotPlayer\Module\OpenCodec";   Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\FFmpeg62\FFmpeg64.dll";           DestDir: "{autopf}\DAUM\PotPlayer\Module\FFmpeg62";    Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\FFmpeg62\FFmpegMininum64.dll";    DestDir: "{autopf}\DAUM\PotPlayer\Module\FFmpeg62";    Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "{tmp}\Module64.7z";                          DestDir: "{tmp}";                                      Components: "program"; Flags: deleteafterinstall
; Listy
Source: "src\UrlList\Radio.asx";                      DestDir: "{autopf}\DAUM\PotPlayer\UrlList";            Components: "program"; Flags: ignoreversion uninsneveruninstall
Source: "src\UrlList\TV.asx";                         DestDir: "{autopf}\DAUM\PotPlayer\UrlList";            Components: "program"; Flags: ignoreversion uninsneveruninstall
; Pixel Shaders
Source: "src\PxShader\BT.601 to BT.709.hlsl";         DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Convert HDR to SDR.hlsl";       DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Debanding D3D9.hlsl";           DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Fix YV12 Chroma.hlsl";          DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Gamma.hlsl";                    DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Levels 16-235.hlsl";            DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Levels Custom.hlsl";            DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Noise Default.hlsl";            DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Other-PxShader.zip";            DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Adaptive.hlsl";         DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Complex.hlsl";          DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Contrast.hlsl";         DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Flou.hlsl";             DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Luma.hlsl";             DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX ColorGrading.hlsl";     DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX GammaGain.hlsl";        DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX Tonemap.hlsl";          DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX Vibrance.hlsl";         DestDir: "{autopf}\DAUM\PotPlayer\PxShader";           Components: "program"; Flags: ignoreversion
; Skins
Source: "src\Skins\Default.MOD.dsf";                  DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.MOD.Old.Optimized.dsf";    DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.MOD.Optimized.Blue.dsf";   DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.Mod.Yellow.dsf";           DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.dsf";                         DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.Gilly.dsf";                   DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.Light.dsf";                   DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\Inflames.dsf";                     DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\LUMINPOT.DSF";                     DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v1.0.dsf";                  DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v2.0.dsf";                  DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v3.0.dsf";                  DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotXMP.dsf";                       DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
Source: "src\Skins\v2.6 (Window Frame).dsf";          DestDir: "{autopf}\DAUM\PotPlayer\Skins";              Components: "program"; Flags: ignoreversion
; Logos
Source: "src\Logos\Anime.jpg";                        DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion 
Source: "src\Logos\City.jpg";                         DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Girls.jpg";                        DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Logo1.png";                        DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Logo2.png";                        DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion 
Source: "src\Logos\PotPlayer2.png";                   DestDir: "{autopf}\DAUM\PotPlayer\Logos";              Components: "program"; Flags: ignoreversion
;
Source: "7za.exe";                                    DestDir: "{tmp}";                                      Flags: deleteafterinstall
;
Source: "{fonts}\Oswald-Regular.ttf";                 DestDir: "{autofonts}"; FontInstall: "Oswald Regular"; Flags: onlyifdoesntexist uninsneveruninstall   

#include "include/files-acestream.iss"
#include "include/files-components.iss"
#include "include/files-ytdlp.iss"
#include "include/files-torrserver.iss"
#include "include/files-svp.iss"
#include "include/files-extensions.iss"
#include "include/files-playlists.iss"

   
[Registry]
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\FanPack64_is1"; ValueName: "DisplayVersion"; ValueType: string; ValueData: "{#MyAppVersion}"; Flags: uninsdeletevalue
#include "include/files-registry.iss"


[InstallDelete]
;----------------- Usuwanie plików z folderów PotPlayer  -----------------
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\AviSynth\*"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\PxShader\*"

;----------------- Usuwanie zbędnych folderów poinstalacyjnych -----------------
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Html"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\FFmpeg4"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data"

;----------------- Usuwanie zbędnych plików poinstalacyjnych -----------------
Type: files; Name: "{autopf}\DAUM\PotPlayer\FileList.txt"


[Run]
#if localize == "true"
;----------------- Rozpakowywanie archiwów 7z -----------------
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\Module64.7z"" -o""{autopf}\DAUM\PotPlayer\Module"" * -r -aoa"; Flags: runhidden; StatusMsg: "{cm:msg_extracting}"; Components: "program"
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\madVR.7z"" -o""{autopf}\madVR"" * -r -aoa";                    Flags: runhidden; StatusMsg: "{cm:msg_extmadVR}";   Components: "madVR"
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\lib.7z"" -o""{userappdata}\AceStream\engine\lib"" * -r -aoa";  Flags: runhidden; StatusMsg: "{cm:msg_extAceLib}";  Components: "ACE"

;----------------- Przenoszenie plików pakietu FFmpeg -----------------
Filename: "{cmd}"; Parameters: "/C move ""{tmp}\ffmpeg-8.1-essentials_build\bin\ffmpeg.exe"" ""{autopf}\DAUM\PotPlayer\Module\ffmpeg.exe""";   Components: "FFmpeg"; Flags: runhidden
Filename: "{cmd}"; Parameters: "/C move ""{tmp}\ffmpeg-8.1-essentials_build\bin\ffprobe.exe"" ""{autopf}\DAUM\PotPlayer\Module\ffprobe.exe"""; Components: "FFmpeg"; Flags: runhidden

;----------------- Instalacja Icaros -----------------
Filename: "{tmp}\Icaros.exe"; Parameters: "/VERYSILENT"; WorkingDir: "{tmp}"; Description: "{cm:msg_install_icaros}"; StatusMsg: "{cm:msg_install_icaros}"; Check: FileExists(ExpandConstant('{tmp}\Icaros.exe')); Components: "Icaros"

;----------------- Import rejestru -----------------
Filename: "reg"; Parameters: "IMPORT {tmp}\pot64_settings.reg /reg:64"; Description: "{cm:msg_confpot}"; StatusMsg: "{cm:msg_confpot}"; Check: not WizardIsTaskSelected('skipsettings'); Flags: runhidden

;----------------- Uruchomienie PotPlayer po instalacji -----------------
Filename: "{autopf}\DAUM\PotPlayer\PotPlayerMini64.exe"; Description: "{cm:LaunchProgram}"; Flags: postinstall skipifsilent nowait

;----------------- Otwarcie dodatków przeglądarki -----------------
Filename: "https://addons.mozilla.org/pl/firefox/addon/potplayer-youtube-shortcut/"; Description: "{cm:tsk_addon_1}"; Tasks: "addon\1"; Flags: postinstall ShellExec
Filename: "https://chrome.google.com/webstore/search/potplayer"; Description: "{cm:tsk_addon_2}"; Tasks: "addon\2"; Flags: postinstall ShellExec
#endif


[UninstallRun]
#if localize == "true"
;----------------- Ubijanie procesu PotPlayer -----------------
Filename: "{autopf}\DAUM\PotPlayer\KillPot64.exe"; WorkingDir: "{autopf}\DAUM\PotPlayer"; RunOnceId: "DelService"; Flags: shellexec runhidden

;----------------- Usuwanie madVR (bat) -----------------
Filename: "{app}\delete madVR.bat"; WorkingDir: "{app}"; RunOnceId: "DelmadVR"; Flags: shellexec runhidden; Check: FileExists(ExpandConstant('{app}\delete madVR.bat')); Components: "madVR"

;----------------- Usuwanie wpisów rejestru -----------------
Filename: "reg"; Parameters: "IMPORT delete_pot_progs_hkcu.reg /reg:64"; WorkingDir: "{app}\reg"; RunOnceId: "DelReg"; Flags: waituntilterminated runhidden shellexec

;----------------- Przenoszenie oryginalnych plików PotPlayer -----------------
Filename: "{cmd}"; Parameters: "/C IF EXIST ""{app}\AviSynth\*.*"" (MOVE /Y ""{app}\AviSynth\*.*"" ""{autopf}\DAUM\PotPlayer\AviSynth"")"; RunOnceId: "MoveAVS"; Flags: runhidden
Filename: "{cmd}"; Parameters: "/C IF EXIST ""{app}\PxShader\*.*"" (MOVE /Y ""{app}\PxShader\*.*"" ""{autopf}\DAUM\PotPlayer\PxShader"")"; RunOnceId: "MovePx"; Flags: runhidden
#endif


[UninstallDelete]
Type: filesandordirs; Name: "{tmp}\ffmpeg-8.1-essentials_build"
Type: filesandordirs; Name: "{app}"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\MI"
Type: filesandordirs; Name: "{autopf}\madVR"; Components: "madvr"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\LAV"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\XySubFilter"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data"
Type: filesandordirs; Name: "{userappdata}\PotPlayerMini64\Extension"
Type: filesandordirs; Name: "{userappdata}\PotPlayerMini64\TorrServer"
Type: filesandordirs; Name: "{userappdata}\.ACEStream" 
Type: filesandordirs; Name: "{userappdata}\AceStream"
Type: filesandordirs; Name: "{localappdata}\deno" 
Type: filesandordirs; Name: "C:\_acestream_cache_" 
Type: filesandordirs; Name: "D:\_acestream_cache_"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\LAVVideo.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\LAVAudio.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\LAVSplitter.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\avcodec-lav-62.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\avfilter-lav-11.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\avformat-lav-62.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\avutil-lav-60.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\IntelQuickSyncDecoder.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\LAVFilters.Dependencies.manifest"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\libbluray.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\swresample-lav-6.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\LAV\swscale-lav-9.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\AviSplitter.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\MatroskaSplitter.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\MP4Splitter.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpaDecFilter.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpcAudioRenderer.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE\MPCVideoDec.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MpcVideoRenderer64.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\XySubFilter\VSFilter.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\XySubFilter\XySubFilter.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\sanear64.ax"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\ffmpeg.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\ffprobe.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\deno.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\yt-dlp-live-from-start.bat"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\yt-dlp-add-metadata.bat"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\yt-dlp.bat"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\run.vbs"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MI\MediaInfo.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MI\MediaInfo.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.as"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_default.ini"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #1.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #2.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_radio1.jpg"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_radio2.jpg"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\config.ini"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - Twitch.as"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - Twitch.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\UrlList\config.ini"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\UrlList\MediaUrlList - Twitch.as"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\UrlList\MediaUrlList - Twitch.ico"
Type: files;          Name: "{app}\FanPack.url"
Type: files;          Name: "{app}\home.url"
Type: files;          Name: "{app}\Addons Mozilla PotPlayer YouTube.url"
Type: files;          Name: "{app}\Addons Chrome PotPlayer YouTube.url"
Type: files;          Name: "{autopf}\madVR\settings.bin"; Components: "madvr"
Type: files;          Name: "{autopf}\madVR\settings.bak"; Components: "madvr"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\AceTV.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\FilmPolski.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\Torrent.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\YouTube.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\CzarnoBiałe.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Extension\Media\PlayParse\yt-dlp.ini"
Type: files;          Name: "{userappdata}\TorrServer\config.db"
Type: files;          Name: "{userappdata}\TorrServer\config-backup.zip"
Type: files;          Name: "{userappdata}\TorrServer\msvcr100.dll"
Type: files;          Name: "{userappdata}\TorrServer\TorrServer-windows-amd64.exe"
Type: files;          Name: "{userappdata}\TorrServer\tsl.exe"
Type: files;          Name: "{userappdata}\TorrServer\viewed.json"
Type: files;          Name: "{userappdata}\TorrServer\settings.json"


[Code]
// Deklaracja zmiennych globalnych na początku dla porządku
var
  DownloadPage: TDownloadWizardPage;
  PotPlayerDownloadNeeded: Boolean;

// Procedura pomocnicza do zabijania procesów
procedure KillProcess(const FileName: string);
var
  ResultCode: Integer;
begin
  // Dodano /T, aby zabić również procesy potomne
  Exec(ExpandConstant('{cmd}'), '/C taskkill /F /T /IM "' + FileName + '"',
       '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

function IsUpdate: Boolean;
var
  Version: String;
begin
  // Sprawdzamy rejestr lub istnienie pliku głównego
  Result :=
    RegQueryStringValue(HKLM64, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\FanPack64_is1', 'DisplayVersion', Version) or
    FileExists(ExpandConstant('{autopf}\{#MyAppName}\MyProg-x64.exe'));
end;

function InitializeUninstall(): Boolean;
begin
  // Lista procesów do zamknięcia przed deinstalacją
  KillProcess('yt-dlp.exe');
  KillProcess('TorrServer-windows-amd64.exe');
  KillProcess('tsl.exe');
  KillProcess('ace_engine.exe');
  Result := True;  
end;

// Uniwersalna procedura rejestracji (dla clean code)
procedure RegisterFilter(const FilePath: String);
var
  ResultCode: Integer;
begin
  if FileExists(ExpandConstant(FilePath)) then
  begin
    if not Exec(
      ExpandConstant('{sys}\regsvr32.exe'),
      '/s "' + ExpandConstant(FilePath) + '"',
      '',
      SW_HIDE,
      ewWaitUntilTerminated,
      ResultCode
    ) then
    begin
      MsgBox('Nie udało się zarejestrować filtra: ' + FilePath + #13#10 + 'Kod błędu: ' + IntToStr(ResultCode), mbError, MB_OK);
    end;
  end;
end;

procedure UnregisterFilter(const FilePath: String);
var
  ResultCode: Integer;
begin
  if FileExists(ExpandConstant(FilePath)) then
  begin
    Exec(
      ExpandConstant('{sys}\regsvr32.exe'),
      '/u /s "' + ExpandConstant(FilePath) + '"',
      '',
      SW_HIDE,
      ewWaitUntilTerminated,
      ResultCode
    );
  end;
end;

function BoolToString(Value: Boolean): String;
begin
  if Value then
    Result := 'True' 
  else 
    Result := 'False';
end;

function IsIcarosInstalled: Boolean;
var
  Version: String;
begin
  // 1️. Sprawdzenie rejestru (najpewniejsze)
  if RegQueryStringValue(
       HKLM,
       'SOFTWARE\Icaros',
       'Version',
       Version
     ) then
  begin
    Log('Icaros detected via registry: ' + Version);
    Result := True;
    Exit;
  end;

  // 2️. 64-bit registry fallback
  if RegQueryStringValue(
       HKLM64,
       'SOFTWARE\Icaros',
       'Version',
       Version
     ) then
  begin
    Log('Icaros detected via HKLM64: ' + Version);
    Result := True;
    Exit;
  end;
  
    // 3. HKCU registry fallback
  if RegQueryStringValue(
       HKCU,
       'SOFTWARE\Icaros',
       'Version',
       Version
     ) then
  begin
    Log('Icaros detected via HKCU: ' + Version);
    Result := True;
    Exit;
  end;

  // 4. Fallback – plik wykonywalny
  if FileExists(ExpandConstant('{autopf}\Icaros\IcarosConfig.exe')) then
  begin
    Log('Icaros detected via file');
    Result := True;
    Exit;
  end;

  // ❌ brak instalacji
  Log('Icaros not installed');
  Result := False;
end;

function IsPotPlayerInstalled: Boolean;
var
  ExePath: String;
begin
  Result := False;
  // Sprawdzenie rejestru PotPlayer64
  if RegQueryStringValue(HKLM64, 'SOFTWARE\DAUM\PotPlayer64', 'ProgramPath', ExePath) then
  begin
    if FileExists(ExePath) then
    begin
      Log('PotPlayer found in registry: ' + ExePath);
      Result := True;
      Exit;
    end;
  end;

  // Sprawdzenie domyślnej lokalizacji
  ExePath := ExpandConstant('{autopf}\DAUM\PotPlayer\PotPlayerMini64.exe');
  if FileExists(ExePath) then
  begin
    Log('PotPlayer found in default location: ' + ExePath);
    Result := True;
    Exit;
  end;

  Log('PotPlayer not found on the system.');
end;

function GetInstalledVersion: String;
var
  Version: String;
begin
  Result := '';
  if RegQueryStringValue(HKLM64, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\FanPack64_is1', 'DisplayVersion', Version) then
  begin
    Log('FanPack version found: ' + Version);
    Result := Version;
  end;
end;

function CompareVersion(const Version1, Version2: String): Integer;
var
  p1, p2, num1, num2: Integer;
  v1, v2: String;
begin
  Result := 0;
  v1 := Version1;
  v2 := Version2;

  while (v1 <> '') or (v2 <> '') do
  begin
    p1 := Pos('.', v1);
    if p1 = 0 then p1 := Length(v1) + 1;
    p2 := Pos('.', v2);
    if p2 = 0 then p2 := Length(v2) + 1;

    num1 := StrToIntDef(Copy(v1, 1, p1 - 1), 0);
    num2 := StrToIntDef(Copy(v2, 1, p2 - 1), 0);

    if num1 > num2 then
    begin
      Result := 1;
      Exit;
    end
    else if num1 < num2 then
    begin
      Result := -1;
      Exit;
    end;

    Delete(v1, 1, p1);
    Delete(v2, 1, p2);
  end;
end;

// Funkcja uniwersalna do rozpakowywania archiwów 7z
function ExtractArchive(const ArchiveName, OutputDir: String): Boolean;
var
  ResultCode: Integer;
  ArchiveNameExpanded, OutputDirExpanded: String;
begin
  ArchiveNameExpanded := ExpandConstant(ArchiveName);
  OutputDirExpanded := ExpandConstant(OutputDir);
  
  Log('Extracting ' + ArchiveNameExpanded + '...');
  
  // -aoa = Overwrite All without prompt
  Result := Exec(ExpandConstant('{tmp}\7za.exe'),
    'x "' + ArchiveNameExpanded + '" -o"' + OutputDirExpanded + '" * -r -aoa',
    '', SW_HIDE, ewWaitUntilTerminated, ResultCode);

  if (Result) and (ResultCode = 0) then
  begin
    Log('Extraction successful: ' + ArchiveNameExpanded);
    Result := True;
  end
  else
  begin
    MsgBox('Błąd rozpakowywania: ' + ArchiveNameExpanded + #13#10 + 'Kod błędu: ' + IntToStr(ResultCode), mbError, MB_OK);
    Log('7za failed for ' + ArchiveNameExpanded + ' with code: ' + IntToStr(ResultCode));
    Result := False;
  end;
end;

function InstallPotPlayer: Boolean;
var
  ResultCode: Integer;
begin
  Log('Starting PotPlayer installation...');
  
  // ZMIANA: Zamiast ewNoWait + Sleep, używamy ewWaitUntilTerminated.
  // Dzięki temu instalator poczeka, aż użytkownik zakończy instalację PotPlayera.
  if Exec(ExpandConstant('{tmp}\PotPlayerSetup64.exe'), '', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode) then
  begin
    // Po zamknięciu instalatora sprawdzamy, czy się pojawił
    if IsPotPlayerInstalled then
    begin
      Log('PotPlayer installation verified successfully.');
      Result := True;
    end
    else
    begin
      // Jeśli instalator się zamknął, a programu nie ma, może użytkownik anulował?
      if MsgBox('Nie wykryto instalacji PotPlayera. Czy instalacja zakończyła się sukcesem?', mbConfirmation, MB_YESNO) = IDYES then
        Result := True
      else
        Result := False;
    end;
  end
  else
  begin
    MsgBox('Nie udało się uruchomić instalatora PotPlayera. Kod błędu: ' + IntToStr(ResultCode), mbError, MB_OK);
    Result := False;
  end;
end;

function InitializeSetup: Boolean;
var
  InstalledVersion: String;
begin
  // Zabij procesy na początku
  KillProcess('yt-dlp.exe');
  KillProcess('TorrServer-windows-amd64.exe');
  KillProcess('tsl.exe');
  KillProcess('ace_engine.exe');
  KillProcess('PotPlayerMini64.exe');  // ← PotPlayer też może blokować pliki
  
  PotPlayerDownloadNeeded := False;

  if not IsPotPlayerInstalled then
  begin
    if MsgBox('Odtwarzacz PotPlayer nie został wykryty. Chcesz go pobrać i zainstalować?', mbConfirmation, MB_YESNO) = IDYES then
    begin
      PotPlayerDownloadNeeded := True;
      Log('User agreed to download PotPlayer.');
      Result := True;
    end
    else
    begin
      MsgBox('Instalacja wymaga odtwarzacza PotPlayer. Zostanie przerwana.', mbInformation, MB_OK);
      Result := False;
    end;
    Exit;
  end;

  InstalledVersion := GetInstalledVersion;
  if InstalledVersion <> '' then
  begin
    // Upewnij się, że {#MyAppVersion} jest zdefiniowane w skrypcie preprocesora
    if CompareVersion(InstalledVersion, '{#MyAppVersion}') >= 0 then
    begin
      MsgBox('Zainstalowana wersja (' + InstalledVersion + ') jest aktualna lub nowsza.', mbInformation, MB_OK);
      Result := False;
    end
    else if MsgBox('Zainstalowana jest wersja ' + InstalledVersion + '. Zaktualizować do {#MyAppVersion}?', mbConfirmation, MB_YESNO) = IDYES then
      Result := True
    else
      Result := False;
  end
  else
  begin
    Log('No previous FanPack version detected.');
    Result := True;
  end;
end;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if ProgressMax > 0 then
    Log(Format('Downloading %s: %d%%', [FileName, Round((Progress / ProgressMax) * 100)]));
  Result := True;
end;

procedure InitializeWizard;
begin
  // NAPRAWIONY BŁĄD SKŁADNIOWY (usunięto zagnieżdżony begin/end i połączono logikę)
  if IsUpdate then
  begin
    WizardSelectTasks('skipsettings');
    WizardForm.TasksList.Enabled := True; 
  end;

  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
  DownloadPage.ShowBaseNameInsteadOfUrl := True;
  Log('Download page created.');
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  HasDownloads: Boolean;
begin
  Result := True;

  if CurPageID = wpReady then
  begin
    Log('Preparing downloads...');
    DownloadPage.Clear;
    HasDownloads := False;

    if PotPlayerDownloadNeeded then
    begin
      // Upewnij się, że link i hash są aktualne
      DownloadPage.Add('https://t1.daumcdn.net/potplayer/PotPlayer/Version/260401/PotPlayerSetup64.exe', 'PotPlayerSetup64.exe', '');
      HasDownloads := True;
    end;

    if HasDownloads then
    begin
      try
        DownloadPage.Show;
        DownloadPage.Download;
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          Log('Download aborted by user.')
        else
          SuppressibleMsgBox('Błąd pobierania: ' + GetExceptionMessage, mbCriticalError, MB_OK, IDOK);
        
        Result := False;
      finally
        DownloadPage.Hide;
      end;

      // Jeśli pobieranie się udało i potrzebna jest instalacja PotPlayera
      if Result and PotPlayerDownloadNeeded then
      begin
        if FileExists(ExpandConstant('{tmp}\PotPlayerSetup64.exe')) then
        begin
          if not InstallPotPlayer then
          begin
            Result := False; // Przerywamy, jeśli instalacja PotPlayera się nie powiodła
          end;
        end;
      end;
    end;
  end;
end;

// Wykorzystujemy funkcję DeleteTempFiles
procedure DeleteTempFiles;
var
  TempFiles: array of String;
  I: Integer;
begin
  Log('Deleting temp files...');
  SetArrayLength(TempFiles, 9);
  TempFiles[0] := ExpandConstant('{tmp}\Module64.7z');
  TempFiles[1] := ExpandConstant('{tmp}\Icaros.exe');
  TempFiles[2] := ExpandConstant('{tmp}\madVR.7z');
  TempFiles[3] := ExpandConstant('{tmp}\PotPlayerSetup64.exe');
  TempFiles[4] := ExpandConstant('{tmp}\yt-dlp.exe');
  TempFiles[5] := ExpandConstant('{tmp}\ffmpeg.7z');
  TempFiles[6] := ExpandConstant('{tmp}\deno-x86_64-pc-windows-msvc.zip');
  TempFiles[7] := ExpandConstant('{tmp}\ffmpeg-8.0.1-essentials_build.7z');
  TempFiles[8] := ExpandConstant('{tmp}\lib.7z');

  for I := 0 to GetArrayLength(TempFiles) - 1 do
  begin
    if FileExists(TempFiles[I]) then
    begin
      if DeleteFile(TempFiles[I]) then
        Log('Deleted: ' + TempFiles[I])
      else
        Log('Failed to delete: ' + TempFiles[I]);
    end;
  end;
end;

procedure SHChangeNotify(wEventId, uFlags: Integer; dwItem1, dwItem2: Integer);
external 'SHChangeNotify@shell32.dll stdcall';

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    // Rejestracja filtrów po instalacji
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVVideo.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVAudio.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVSplitter.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpaDecFilter.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpcAudioRenderer.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MPCVideoDec.ax');
    RegisterFilter('{autopf}\DAUM\PotPlayer\Module\XySubFilter\XySubFilter.dll');
    RegisterFilter('{autopf}\madVR\madVR64.ax');

    // Odświeżenie pulpitu
    SHChangeNotify($8000000, $1000, 0, 0);
  end;

  // Usunięcie śmieci po zakończeniu sukcesem
  if CurStep = ssDone then
  begin
    DeleteTempFiles;
  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usUninstall then
  begin
    // Wyrejestrowanie filtrów podczas deinstalacji
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\sanear64.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVVideo.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVAudio.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\LAV\LAVSplitter.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\XySubFilter\XySubFilter.dll');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\MpcVideoRenderer64.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpaDecFilter.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpcAudioRenderer.ax');
    UnregisterFilter('{autopf}\DAUM\PotPlayer\Module\MPC-BE\MPCVideoDec.ax');
    UnregisterFilter('{autopf}\madVR\madVR64.ax');
  end;
end;

// Procedura DeinitializeSetup - dobre miejsce na sprzątanie jeśli instalator zostanie przerwany
procedure DeinitializeSetup;
begin
  // Można tu też wywołać DeleteTempFiles, jeśli chcemy sprzątać po błędach
  DeleteTempFiles;
end;

