; Rozszerzenia PotPlayer [Files]
; Extension YTDLP
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-live-from-start.bat";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-add-metadata.bat";                    DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp.bat";                                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as";              DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico";             DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "https://github.com/yt-dlp/yt-dlp/releases/download/2026.03.13/yt-dlp.exe"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; DestName: "yt-dlp.exe"; Components: "YTDLP"; Hash: "76f574f1879a0b32f0829cdcc3aaee9654d927227f8deced7557f5486dd4e1ce"; \
ExternalSize: 18_444_288; Flags: external download ignoreversion
