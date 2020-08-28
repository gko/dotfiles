# youtube-dl aliases
alias youtube-dl-best='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" '
alias youtube-dl-480='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]" '
alias youtube-dl-720='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]" '
alias youtube-dl-4k='echo -e "This will transcode the video from webm to h264 which could take a long time\n\n"; \
	youtube-dl -f "bestvideo[ext=webm]+bestaudio[ext=m4a]" \
	--restrict-filenames \
	--recode-video mp4 '
alias youtube-dl-playlist='youtube-dl \
	--restrict-filenames \
	--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '
alias youtube-dl-mp3='youtube-dl --extract-audio \
	--format bestaudio \
	--audio-format mp3 \
	--restrict-filenames \
	--no-playlist '
alias youtube-dl-mp3-playlist='youtube-dl --ignore-errors \
	--format bestaudio \
	--extract-audio \
	--audio-format mp3 \
	--audio-quality 160K \
	--restrict-filenames \
	--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" \
	--yes-playlist '

