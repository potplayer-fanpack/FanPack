; Rozszerzenia PotPlayer [Files]
; Extension YTDLP
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-live-from-start.bat";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-add-metadata.bat";                    DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp.bat";                                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as";              DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico";             DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "https://github.com/yt-dlp/yt-dlp/releases/download/2026.08.19/yt-dlp.exe"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; DestName: "yt-dlp.exe"; Components: "YTDLP"; Hash: "66674953fe251b89f4d08c5f0e35e0728679bd67ab3d7d05c0562af101dd3e7a"; \
ExternalSize: 17_846_272; Flags: external download ignoreversion
