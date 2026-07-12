; Rozszerzenia PotPlayer [Files]
; Extension YTDLP
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-live-from-start.bat";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-add-metadata.bat";                    DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp.bat";                                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as";              DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico";             DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "https://github.com/yt-dlp/yt-dlp/releases/download/2026.07.04/yt-dlp.exe"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; DestName: "yt-dlp.exe"; Components: "YTDLP"; Hash: "52fe3c26dcf71fbdc85b528589020bb0b8e383155cfa81b64dd447bbe35e24b8"; \
ExternalSize: 18_231_296; Flags: external download ignoreversion
