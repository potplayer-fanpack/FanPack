; Rozszerzenia PotPlayer [Files]
; Extension YTDLP
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-live-from-start.bat";                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
;Source: "src\Extension\Data\yt-dlp_win\yt-dlp-add-metadata.bat";                    DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Data\yt-dlp_win\yt-dlp.bat";                                 DestDir: "{autopf}\DAUM\PotPlayer\Module";                         Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.as";              DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "src\Extension\Media\PlayParse\MediaPlayParse - yt-dlp-DV.ico";             DestDir: "{autopf}\DAUM\PotPlayer\Extension\Media\PlayParse";      Components: "YTDLP"; Flags: ignoreversion
Source: "https://github.com/yt-dlp/yt-dlp/releases/download/2026.10.21/yt-dlp.exe"; DestDir: "{autopf}\DAUM\PotPlayer\Module"; DestName: "yt-dlp.exe"; Components: "YTDLP"; Hash: "33121d192d706e62f684a06f80918e3f3a8ba52ac3a65213b6951c39c7d9f555"; \
ExternalSize: 17_887_232; Flags: external download ignoreversion
