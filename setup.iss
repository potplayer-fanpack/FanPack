#pragma option -v+
#pragma verboselevel 9

#define MyAppName "FanPack64"
#define MyBrandName "FanPack64"
#define MyAppVersion "3.9.6370"
#define MyAppPublisher "PotPlayer Club"
#define MyAppURL "https://github.com/potplayer-fanpack/FanPack"
#define MyAppExeName "MyProg-x64.exe"

#define keyPM "Software\Daum\PotPlayerMini64"
#define keyPMS "Software\Daum\PotPlayerMini64\Settings"

[Setup]
AppId                              = {#MyAppName}
AppName                            = {#MyAppName}
AppVerName                         = {#MyAppName} v{#MyAppVersion}
AppVersion                         = {#MyAppVersion}
AppPublisher                       = {#MyAppPublisher}
AppPublisherURL                    = {#MyAppURL}
AppSupportURL                      = {#MyAppURL}
AppUpdatesURL                      = {#MyAppURL}
DefaultDirName                     = {userappdata}\{#MyAppName}
DefaultGroupName                   = {#MyAppName}
AppCopyright                       = Copyright © {#MyAppPublisher} 2014-2025
AllowNoIcons                       = yes
OutputDir                          = bin
SourceDir                          = .
Compression                        = lzma2/ultra
InternalCompressLevel              = ultra
SolidCompression                   = yes
SetupIconFile                      = embedded\PotPlayer.ico
ShowTasksTreeLines                 = yes
WizardStyle                        = modern
WizardSmallImageFile               = embedded\WizardSmallImage.bmp
Uninstallable                      = yes
OutputBaseFilename                 = {#MyAppName}_v{#MyAppVersion}
ArchitecturesAllowed               = x64compatible
ArchitecturesInstallIn64BitMode    = x64compatible
DisableDirPage                     = yes
DisableProgramGroupPage            = yes
UsePreviousLanguage                = no
UsePreviousPrivileges              = no
;PrivilegesRequired                 = admin
PrivilegesRequiredOverridesAllowed = 
UsedUserAreasWarning               = yes
VersionInfoVersion                 = {#MyAppVersion}.0
SetupLogging                       = yes

[Languages]
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"

#include "include/custom_messages.iss"

[Messages]
BeveledLabel= 22.07.2025

[Tasks]
; Integracja
Name: "minfo";                Description: "{cm:tsk_minfo}";                      GroupDescription: "{cm:tsk_group1}"; Flags: unchecked
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
Name: "savegalery";           Description: "{cm:tsk_savegalery}";                 GroupDescription: "{cm:tsk_group2}"
Name: "dispasthumb";          Description: "{cm:tsk_dispasthumb}";                GroupDescription: "{cm:tsk_group2}"
Name: "loadurl";              Description: "{cm:tsk_loadurl}";                    GroupDescription: "{cm:tsk_group2}"
Name: "rememberlist";         Description: "{cm:tsk_rememberlist}";               GroupDescription: "{cm:tsk_group2}"
; Dodatkowe ustawienia audio
Name: "extaudio";             Description: "{cm:tsk_extaudio}";                   GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "renaudio";             Description: "{cm:tsk_renaudio}";                   GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "renaudio\auto";        Description: "{cm:tsk_renaudio_auto}";              GroupDescription: "{cm:tsk_group3}"; Flags: exclusive
Name: "renaudio\directsound"; Description: "{cm:tsk_renaudio_directsound}";       GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "renaudio\wasapi";      Description: "{cm:tsk_renaudio_wasapi}";            GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "renaudio\sanear";      Description: "{cm:tsk_renaudio_sanear}";            GroupDescription: "{cm:tsk_group3}"; Flags: exclusive unchecked
Name: "crossfeed";            Description: "{cm:tsk_crossfeed}";                  GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
Name: "virtual_dolby";        Description: "{cm:tsk_virtual_dolby}";              GroupDescription: "{cm:tsk_group3}"; Flags: unchecked
; Dodatkowe ustawienia wideo
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


[Types]
Name: "tweak";                Description: "{cm:comp_tweak}"
Name: "full";                 Description: "{cm:comp_full}"
Name: "compact";              Description: "{cm:comp_compact}"
Name: "custom";               Description: "{cm:comp_custom}"; Flags: iscustom

[Components]
Name: "program";              Description: "{cm:comp_program}";      Types: tweak full compact custom; Flags: fixed
Name: "YTDLP";                Description: "{cm:comp_YTDLP}";        Types: tweak full custom; ExtraDiskSpaceRequired: 18018304
Name: "YTDLP\FFmpeg";         Description: "{cm:comp_YTDLP_FFmpeg}"; Types: tweak full custom
Name: "EXT";                  Description: "{cm:comp_ext}";          Types: custom
Name: "EXT/torrent";          Description: "{cm:comp_ext_torrent}";  Types: tweak full custom
Name: "EXT/ytdlp";            Description: "{cm:comp_ext_ytdlp}";    Types: tweak full custom
Name: "icaros";               Description: "{cm:comp_icaros}";       Types: custom; Check: not IsIcarosInstalled; ExtraDiskSpaceRequired: 13201408

[Files]
; Core program files
Source: "InstallDir\Changelog.txt";               DestName: "Lista zmian.txt"; DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\License.txt";                 DestName: "Licencja.txt";    DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\ReadMe.txt";                  DestName: "CzytajTo.txt";    DestDir: "{app}";                                                Components: "program"; Flags: isreadme
Source: "InstallDir\LGPL.TXT";                                                 DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\MyProg-x64.exe";                                           DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\AviSynth\*";                                               DestDir: "{app}\AviSynth";                                       Components: "program"; Flags: ignoreversion
Source: "InstallDir\PxShader\*";                                               DestDir: "{app}\PxShader";                                       Components: "program"; Flags: ignoreversion
Source: "InstallDir\PotPlayerMini64.exe";                                      DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\PotPlayerMini64.dpl";                                      DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
Source: "InstallDir\reg\pot64_settings.reg";                                   DestDir: "{tmp}";                                                Components: "program"; Flags: ignoreversion deleteafterinstall
Source: "InstallDir\reg\delete_pot_progs_hkcu.reg";                            DestDir: "{app}\reg";                                            Components: "program"; Flags: ignoreversion
Source: "src\PotPlayerMini64.exe";                                             DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion uninsneveruninstall
Source: "src\History\Polish.txt";                                              DestDir: "{autopf}\DAUM\PotPlayer\History";                      Components: "program"; Flags: ignoreversion uninsneveruninstall
Source: "src\Language\Polish.ini";                                             DestDir: "{autopf}\DAUM\PotPlayer\Language";                     Components: "program"; Flags: ignoreversion uninsneveruninstall
; OpenCodec
Source: "src\Module\libmfxsw64.dll";                                           DestDir: "{autopf}\DAUM\PotPlayer\Module";                       Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\OpenCodec\OpenCodecUnity64.dll";                           DestDir: "{autopf}\DAUM\PotPlayer\Module\OpenCodec";             Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\FFmpeg62\FFmpeg64.dll";                                    DestDir: "{autopf}\DAUM\PotPlayer\Module\FFmpeg62";              Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "src\Module\FFmpeg62\FFmpegMininum64.dll";                             DestDir: "{autopf}\DAUM\PotPlayer\Module\FFmpeg62";              Components: "program"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "{tmp}\Module64.7z";                                                   DestDir: "{tmp}";                                                Components: "program"; Flags: deleteafterinstall
; Listy
Source: "src\UrlList\Radio.asx";                                               DestDir: "{autopf}\DAUM\PotPlayer\UrlList";                      Components: "program"; Flags: ignoreversion uninsneveruninstall
Source: "src\UrlList\TV.asx";                                                  DestDir: "{autopf}\DAUM\PotPlayer\UrlList";                      Components: "program"; Flags: ignoreversion uninsneveruninstall
; Pixel Shaders
Source: "src\PxShader\BT.601 to BT.709.hlsl";                                  DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Convert HDR to SDR.hlsl";                                DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Debanding D3D9.hlsl";                                    DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Fix YV12 Chroma.hlsl";                                   DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Gamma.hlsl";                                             DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Levels 16-235.hlsl";                                     DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Levels Custom.hlsl";                                     DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Noise Default.hlsl";                                     DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Other-PxShader.zip";                                     DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Adaptive.hlsl";                                  DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Complex.hlsl";                                   DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Contrast.hlsl";                                  DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Flou.hlsl";                                      DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\Sharpen Luma.hlsl";                                      DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX ColorGrading.hlsl";                              DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX GammaGain.hlsl";                                 DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX Tonemap.hlsl";                                   DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
Source: "src\PxShader\SweetFX Vibrance.hlsl";                                  DestDir: "{autopf}\DAUM\PotPlayer\PxShader";                     Components: "program"; Flags: ignoreversion
; Skins
Source: "src\Skins\Default.MOD.dsf";                                           DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.MOD.Old.Optimized.dsf";                             DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.MOD.Optimized.Blue.dsf";                            DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\Default.MOD.Optimized.Yellow.dsf";                          DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.dsf";                                                  DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.Gilly.dsf";                                            DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\FMOD.Light.dsf";                                            DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\Inflames.dsf";                                              DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\LUMINPOT.DSF";                                              DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v1.0.dsf";                                           DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v2.0.dsf";                                           DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotMPC v3.0.dsf";                                           DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\PotXMP.dsf";                                                DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
Source: "src\Skins\v2.6 (Window Frame).dsf";                                   DestDir: "{autopf}\DAUM\PotPlayer\Skins";                        Components: "program"; Flags: ignoreversion
; Logos
Source: "src\Logos\Anime.jpg";                                                 DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion 
Source: "src\Logos\City.jpg";                                                  DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Girls.jpg";                                                 DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Logo1.png";                                                 DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion 
Source: "src\Logos\Logo2.png";                                                 DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion 
Source: "src\Logos\PotPlayer2.png";                                            DestDir: "{autopf}\DAUM\PotPlayer\Logos";                        Components: "program"; Flags: ignoreversion
; madVR
Source: "{tmp}\madVR_v0.9.17.exe";                                             DestDir: "{tmp}";                                                Components: "program"; Flags: deleteafterinstall
Source: "InstallDir\delete madVR.bat";                                         DestDir: "{app}";                                                Components: "program"; Flags: ignoreversion
; AviSynth and SVPflow
Source: "src\AviSynth\CPU-1-Low.avs";                                          DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth\CPU-2-Medium.avs";                                       DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth\CPU-3-High.avs";                                         DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth\GPU-1-Low.avs";                                          DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth\GPU-2-Medium.avs";                                       DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth\GPU-3-High.avs";                                         DestDir: "{autopf}\DAUM\PotPlayer\AviSynth";                     Components: "program"; Flags: ignoreversion
Source: "src\AviSynth.dll";                                                    DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion 
Source: "src\msvcp140.dll";                                                    DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion
Source: "src\svpflow1.dll";                                                    DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion
Source: "src\svpflow2.dll";                                                    DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion
Source: "src\vcruntime140.dll";                                                DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion
Source: "src\svp.avs";                                                         DestDir: "{autopf}\DAUM\PotPlayer";                              Components: "program"; Flags: ignoreversion
; YTDLP
; Source: "src\Extension\Data\yt-dlp_win\yt-dlp.exe";                            DestDir: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win";    Components: "YTDLP"; Flags: ignoreversion
; Source: "src\Extension\Data\yt-dlp_win\ffmpeg.exe";                            DestDir: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win";    Components: "YTDLP"; Flags: ignoreversion
; Source: "src\Extension\Data\yt-dlp_win\ffprobe.exe";                           DestDir: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win";    Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp with metadata.bat";              DestDir: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win";    Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp.bat";                            DestDir: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win";    Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as";         DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "YTDLP"; Flags: ignoreversion
Source: "{tmp}\yt-dlp_win.zip";                                                DestDir: "{tmp}";                                                Components: "YTDLP"; Flags: external deleteafterinstall
Source: "{tmp}\ffmpeg.7z";                                                     DestDir: "{tmp}";                                                Components: "YTDLP\FFmpeg"; Flags: deleteafterinstall
; LibTorrent Extension
Source: "src\Extension\Lib\TorrentReader64.dll";                               DestDir: "{autopf}\DAUM\PotPlayer\Extension\Lib";                Components: "EXT/torrent"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - LibTorrent.as";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/torrent"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - LibTorrent.ico";       DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/torrent"; Flags: ignoreversion
Source: "src\Extension\Media\SourceReader\MediaSourceReader - LibTorrent.as";  DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\SourceReader"; Components: "EXT/torrent"; Flags: ignoreversion
Source: "src\Extension\Media\SourceReader\MediaSourceReader - LibTorrent.ico"; DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\SourceReader"; Components: "EXT/torrent"; Flags: ignoreversion
; yt-dlp playlist/playitem
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.as";            DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion 
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.ico";           DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #1.ico";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #2.ico";        DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\yt-dlp_default.ini";                    DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\yt-dlp_radio1.jpg";                     DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\yt-dlp_radio2.jpg";                     DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";    Components: "EXT/ytdlp"; Flags: ignoreversion
; Icaros
Source: "{tmp}\Icaros.exe";                                                    DestDir: "{tmp}";                                                Components: "icaros"; Flags: external deleteafterinstall
Source: "InstallDir\uninstall_Icaros.bat";                                     DestDir: "{app}";                                                Components: "icaros"; Flags: ignoreversion
Source: "InstallDir\reg\delete_icaros.reg";                                    DestDir: "{app}\reg";                                            Components: "icaros"; Flags: ignoreversion
; Samoaktualizujące listy odtwarzania
Source: "{userappdata}\PotPlayerMini64\Playlist\IPTV.dpl";                     DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Tasks: "playlist";  Flags: ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\FilmPolski.dpl";               DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Tasks: "playlist";  Flags: ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\YouTube.dpl";                  DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Tasks: "playlist";  Flags: ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\CzarnoBiałe.dpl";              DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Tasks: "playlist";  Flags: ignoreversion
Source: "{userappdata}\PotPlayerMini64\Playlist\Torrent.dpl";                  DestDir: "{userappdata}\PotPlayerMini64\Playlist";               Tasks: "playlist";  Flags: ignoreversion
; MediaInfo 
Source: "src\Module\MI\MediaInfo.exe";                                         DestDir: "{autopf}\DAUM\PotPlayer\Module\MI";                    Tasks: "minfo"; Flags: ignoreversion
Source: "src\Module\MI\MediaInfo.dll";                                         DestDir: "{autopf}\DAUM\PotPlayer\Module\MI";                    Tasks: "minfo"; Flags: ignoreversion
; Sanear
Source: "src\Module\sanear64.ax";                                              DestDir: "{autopf}\DAUM\PotPlayer\Module";                       Tasks: "renaudio\sanear"; Flags: regserver noregerror ignoreversion
Source: "7za.exe";                                                             DestDir: "{tmp}";                                                                 Flags: deleteafterinstall
;#include "include/files-ytdlp.iss"

[Registry]
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Uninstall\FanPack64_is1"; ValueName: "DisplayVersion"; ValueType: string; ValueData: "{#MyAppVersion}"; Flags: uninsdeletevalue
#include "include/files-registry.iss"

[InstallDelete]
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\AviSynth\*"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\PxShader\*"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Html"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\FFmpeg4"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\FileList.txt"

[Run]
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\Module64.7z"" -o""{autopf}\DAUM\PotPlayer\Module"" * -r -aoa"; Components: "program"; Flags: runhidden runascurrentuser; StatusMsg: "{cm:msg_extracting}"; Check: Check7zaResult
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\yt-dlp_win.zip"" -o""{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win"" * -r -aoa"; Components: "YTDLP"; Flags: runhidden runascurrentuser; StatusMsg: "{cm:msg_extYTDLP}"; Check: CheckYTDLPResult
Filename: "{tmp}\7za.exe"; Parameters: "x ""{tmp}\ffmpeg.7z"" -o""{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win"" * -r -aoa"; Components: "YTDLP\FFmpeg"; Flags: runhidden runascurrentuser; StatusMsg: "{cm:msg_extFFmpeg}"; Check: CheckFFmpegResult
Filename: "{sys}\regedit.exe"; Parameters: "/s ""{tmp}\pot64_settings.reg"""; Description: "{cm:msg_confpot}"; StatusMsg: "{cm:msg_confpot}"; Flags: shellexec runhidden
Filename: "{tmp}\Icaros.exe"; Parameters: "/VERYSILENT"; WorkingDir: "{tmp}"; Description: "{cm:msg_install_icaros}"; StatusMsg: "{cm:msg_install_icaros}"; Components: "icaros"
Filename: "{tmp}\madVR_v0.9.17.exe"; WorkingDir: "{tmp}"; Description: "{cm:msg_install_madVR}"; StatusMsg: "{cm:msg_install_madVR}"
Filename: "{sys}\regsvr32.exe"; Parameters: "/s ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVVideo.ax"""; StatusMsg: "{cm:msg_regLAVV}"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/s ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVAudio.ax"""; StatusMsg: "{cm:msg_regLAVA}"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/s ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVSplitter.ax"""; StatusMsg: "{cm:msg_regLAVS}"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/s ""{autopf}\DAUM\PotPlayer\Module\XySubFilter\XySubFilter.dll""";  StatusMsg: "{cm:cm_regXySub}"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/s ""{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpcVideoRenderer64.ax"""; StatusMsg: "{cm:msg_regMpcVR}"; Flags: shellexec runhidden
Filename: "{autopf}\DAUM\PotPlayer\PotPlayerMini64.exe"; Description: "{cm:LaunchProgram}"; Flags: postinstall skipifsilent nowait
Filename: "https://addons.mozilla.org/pl/firefox/addon/potplayer-youtube-shortcut/"; Description: "{cm:tsk_addon_1}"; Tasks: "addon\1"; Flags: postinstall ShellExec
Filename: "https://chrome.google.com/webstore/search/potplayer"; Description: "{cm:tsk_addon_2}"; Tasks: "addon\2"; Flags: postinstall ShellExec

[Icons]
Name: "{group}\Addons Mozilla PotPlayer YouTube.url"; Filename: "https://addons.mozilla.org/pl/firefox/addon/potplayer-youtube-shortcut/"; Tasks: "addon\1"
Name: "{group}\Addons Chrome PotPlayer YouTube.url";  Filename: "https://chrome.google.com/webstore/search/potplayer";                     Tasks: "addon\2"
Name: "{group}\CzytajTo";                             Filename: "{app}\CzytajTo.txt"
Name: "{group}\Licencja";                             Filename: "{app}\Licencja.txt"
Name: "{group}\Reset madVR";                          Filename: "{userappdata}\madVR\restore default settings.bat"
Name: "{group}\FanPack64 w sieci";                    Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyBrandName}}"; Filename: "{uninstallexe}"
Name: "{group}\Download Video";                       Filename: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\yt-dlp.bat"; IconFilename: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\yt-dlp.exe"; Comment: "{cm:msg_downvideos}"; Components: "YTDLP"
Name: "{userdesktop}\Download Video";                 Filename: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\yt-dlp.bat"; IconFilename: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\yt-dlp.exe"; Comment: "{cm:msg_downvideos}"; Components: "YTDLP"

[UninstallRun]
Filename: "delete madVR.bat"; WorkingDir: "{app}"; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "reg"; Parameters: "IMPORT delete_pot_progs_hkcu.reg /reg:32"; WorkingDir: {app}\reg;  Flags: waituntilterminated runhidden runascurrentuser shellexec
Filename: "{cmd}"; Parameters: "/C IF EXIST ""{app}\AviSynth\*.*"" (MOVE /Y ""{app}\AviSynth\*.*"" ""{autopf}\DAUM\PotPlayer\AviSynth"")"; Flags: runhidden
Filename: "{cmd}"; Parameters: "/C IF EXIST ""{app}\PxShader\*.*"" (MOVE /Y ""{app}\PxShader\*.*"" ""{autopf}\DAUM\PotPlayer\PxShader"")"; Flags: runhidden
Filename: "{cmd}"; Parameters: "/C IF EXIST ""{app}\PotPlayerMini64.exe"" (MOVE /Y ""{app}\PotPlayerMini64.exe"" ""{autopf}\DAUM\PotPlayer\PotPlayerMini64.exe"")"; Flags: runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\sanear64.ax"""; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVVideo.ax"""; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVAudio.ax"""; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\LAV\LAVSplitter.ax"""; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\XySubFilter\XySubFilter.dll"""; RunOnceId: "DelService"; Flags: shellexec runhidden
Filename: "{sys}\regsvr32.exe"; Parameters: "/u ""{autopf}\DAUM\PotPlayer\Module\MPC-BE\MpcVideoRenderer64.ax"""; RunOnceId: "DelService"; Flags: shellexec runhidden

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\MI"
Type: filesandordirs; Name: "{localappdata}\madVR"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\LAV"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\MPC-BE"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Module\XySubFilter"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win"
Type: filesandordirs; Name: "{autopf}\DAUM\PotPlayer\Extension\Data"
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
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\ffmpeg.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win\ffprobe.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.as"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #1.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp #2.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_default.ini"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_radio1.jpg"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\yt-dlp_radio2.jpg"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MI\MediaInfo.exe"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Module\MI\MediaInfo.dll"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico"
Type: files;          Name: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as"
Type: files;          Name: "{app}\FanPack.url"
Type: files;          Name: "{app}\home.url"
Type: files;          Name: "{app}\Addons Mozilla PotPlayer YouTube.url"
Type: files;          Name: "{app}\Addons Chrome PotPlayer YouTube.url"
Type: files;          Name: "{localappdata}\madVR\settings.bin"
Type: files;          Name: "{localappdata}\madVR\settings.bak"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\AceTV.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\FilmPolski.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\Torrent.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\YouTube.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Playlist\CzarnoBiałe.dpl"
Type: files;          Name: "{userappdata}\PotPlayerMini64\Extension\Media\PlayParse\yt-dlp.ini"

[Code]
function BoolToString(Value: Boolean): String;
begin
  if Value then
    Result := 'True'
  else
    Result := 'False';
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
  ExePath := 'C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe';
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

function IsUpgrade: Boolean;
var
  InstalledVersion: String;
begin
  InstalledVersion := GetInstalledVersion;
  Result := (InstalledVersion <> '') and (CompareVersion(InstalledVersion, '{#MyAppVersion}') < 0);
  Log('IsUpgrade result: ' + BoolToString(Result));
end;

function InstallPotPlayer: Boolean;
var
  ResultCode: Integer;
begin
  Log('Starting PotPlayer installation from: ' + ExpandConstant('{tmp}\PotPlayerSetup64.exe'));
  Result := Exec(ExpandConstant('{tmp}\PotPlayerSetup64.exe'), '', '', SW_HIDE, ewNoWait, ResultCode);
  
  if Result then
  begin
    Log('PotPlayer installation started. Waiting 50 seconds...');
    Sleep(50000);
    if IsPotPlayerInstalled then
    begin
      Log('PotPlayer installation verified successfully.');
      Result := True;
    end
    else
    begin
      Log('PotPlayer installation failed: not detected.');
      MsgBox('Nie udało się zweryfikować instalacji PotPlayera. Spróbuj zainstalować go ręcznie.', mbError, MB_OK);
      Result := False;
    end;
  end
  else
  begin
    Log('PotPlayer installation failed to start. Code: ' + IntToStr(ResultCode));
    MsgBox('Nie udało się uruchomić instalatora PotPlayera. Kod błędu: ' + IntToStr(ResultCode), mbError, MB_OK);
    Result := False;
  end;
end;

var
  DownloadPage: TDownloadWizardPage;
  PotPlayerDownloadNeeded: Boolean;

function InitializeSetup: Boolean;
var
  InstalledVersion: String;
begin
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
      Log('User declined PotPlayer installation. Setup aborted.');
      Result := False;
    end;
    Exit;
  end;

  InstalledVersion := GetInstalledVersion;
  if InstalledVersion <> '' then
  begin
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

function IsIcarosInstalled: Boolean;
begin
  Result :=
    RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Icaros') or
    RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432Node\Icaros') or
    FileExists(ExpandConstant('{autopf}\Icaros\IcarosConfig.exe'));

  Log('IsIcarosInstalled result: ' + BoolToString(Result));
end;

function Check7zaResult: Boolean;
var
  ResultCode: Integer;
begin
  Log('Extracting Module64.7z...');
  Result := Exec(ExpandConstant('{tmp}\7za.exe'),
    'x "' + ExpandConstant('{tmp}\Module64.7z') + '" -o"' + ExpandConstant('{autopf}\DAUM\PotPlayer\Module') + '" * -r -aoa',
    '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  
  if ResultCode = 0 then
  begin
    Log('Extraction successful.');
    Result := True;
  end
  else
  begin
    MsgBox('Błąd rozpakowywania Module64.7z. Kod: ' + IntToStr(ResultCode), mbError, MB_OK);
    Log('7za failed with code: ' + IntToStr(ResultCode));
    Result := False;
  end;
end;

 function CheckYTDLPResult: Boolean;
 var
   ResultCode: Integer;
 begin
   Log('Extracting yt-dlp_win.zip...');
   Result := Exec(ExpandConstant('{tmp}\7za.exe'),
     'x "' + ExpandConstant('{tmp}\yt-dlp_win.zip') + '" -o"' + ExpandConstant('{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win') + '" * -r -aoa',
     '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  
   if ResultCode = 0 then
   begin
     Log('Extraction successful.');
     Result := True;
   end
   else
   begin
     MsgBox('Błąd rozpakowywania yt-dlp_win.zip. Kod: ' + IntToStr(ResultCode), mbError, MB_OK);
     Log('7za failed with code: ' + IntToStr(ResultCode));
     Result := False;
   end;
 end;

  function CheckFFmpegResult: Boolean;
 var
   ResultCode: Integer;
 begin
   Log('Extracting ffmpeg.7z...');
   Result := Exec(ExpandConstant('{tmp}\7za.exe'),
     'x "' + ExpandConstant('{tmp}\ffmpeg.7z') + '" -o"' + ExpandConstant('{autopf}\DAUM\PotPlayer\Extension\Data\yt-dlp_win') + '" * -r -aoa',
     '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  
   if ResultCode = 0 then
   begin
     Log('Extraction successful.');
     Result := True;
   end
   else
   begin
     MsgBox('Błąd rozpakowywania ffmpeg.7z. Kod: ' + IntToStr(ResultCode), mbError, MB_OK);
     Log('7za failed with code: ' + IntToStr(ResultCode));
     Result := False;
   end;
 end;
 
function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  Log(Format('Downloading %s: %d / %d bytes', [FileName, Progress, ProgressMax]));
  if Progress = ProgressMax then
    Log(Format('Download completed: %s', [FileName]));
  Result := True;
end;

procedure InitializeWizard;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
  DownloadPage.ShowBaseNameInsteadOfUrl := True;
  Log('Download page created.');
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
  HasDownloads: Boolean;
begin
  if CurPageID = wpReady then
  begin
    Log('Preparing downloads...');
    DownloadPage.Clear;
    HasDownloads := False;

    if PotPlayerDownloadNeeded then
    begin
      DownloadPage.Add('https://t1.daumcdn.net/potplayer/beta/PotPlayerSetup64.exe', 'PotPlayerSetup64.exe', '1608E8BDEF3276D88661B7046C6CDD3004F7609BEB7566116C7F5C82D15D6E83');
      HasDownloads := True;
    end;

    if WizardIsComponentSelected('icaros') then
    begin
      DownloadPage.Add('https://github.com/Xanashi/Icaros/releases/download/v3.3.4b1/Icaros_v3.3.4_b1.exe', 'Icaros.exe', '608ff4b0508f31e3d85810141cbb56b57304a385fc26cce8a9b4b2ad95c99c64');
      HasDownloads := True;
    end;
    
    if WizardIsComponentSelected('YTDLP') then
    begin
      DownloadPage.Add('https://github.com/yt-dlp/yt-dlp/releases/download/2025.07.21/yt-dlp_win.zip', 'yt-dlp_win.zip', 'cd42048eb3bbcef8bf886dcfffeaab517de081d06ca4a32e8375d120bd48e348');
      HasDownloads := True;
    end;

    if HasDownloads then
    begin
      try
        DownloadPage.Show;
        Log('Starting download...');
        DownloadPage.Download;
        Log('Download complete.');

        if PotPlayerDownloadNeeded then
        begin
          if FileExists(ExpandConstant('{tmp}\PotPlayerSetup64.exe')) then
          begin
            if not InstallPotPlayer then
            begin
              Result := False;
              Exit;
            end;
          end
          else
          begin
            MsgBox('Nie znaleziono pliku PotPlayerSetup64.exe.', mbError, MB_OK);
            Result := False;
            Exit;
          end;
        end;

        Result := True;
      except
        if DownloadPage.AbortedByUser then
        begin
          Log('Download aborted by user.');
          Result := False;
        end
        else
        begin
          Log('Download failed: ' + GetExceptionMessage);
          SuppressibleMsgBox('Błąd pobierania: ' + GetExceptionMessage, mbCriticalError, MB_OK, IDOK);
          Result := False;
        end;
      finally
        DownloadPage.Hide;
      end;
    end
    else
    begin
      Log('No downloads required.');
      Result := True;
    end;
  end
  else
    Result := True;
end;

procedure DeleteTempFiles;
var
  TempFiles: array[0..3] of String;
  I: Integer;
begin
  Log('Deleting temp files...');
  TempFiles[0] := ExpandConstant('{tmp}\Module64.7z');
  TempFiles[1] := ExpandConstant('{tmp}\Icaros.exe');
  TempFiles[2] := ExpandConstant('{tmp}\madVR_v0.9.17.exe');
  TempFiles[3] := ExpandConstant('{tmp}\PotPlayerSetup64.exe');
  Tempfiles[4] := ExpandConstant('{tmp}\yt-dlp_win.zip');
  Tempfiles[4] := ExpandConstant('{tmp}\ffmpeg.7z');
  for I := 0 to GetArrayLength(TempFiles) - 1 do
    if FileExists(TempFiles[I]) then
    begin
      if DeleteFile(TempFiles[I]) then
        Log('Deleted: ' + TempFiles[I])
      else
        Log('Failed to delete: ' + TempFiles[I]);
    end;
end;

procedure SHChangeNotify(wEventId, uFlags: Integer; dwItem1, dwItem2: Integer);
external 'SHChangeNotify@shell32.dll stdcall';

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
  begin
    // Odświeżenie pulpitu
    SHChangeNotify($8000000, $1000, 0, 0);
  end;
end;
