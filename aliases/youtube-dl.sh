youtube-dl-aliases () {
	local YOUTUBE_DL_OPTIONS="--ignore-errors \
		--restrict-filenames \
		--no-mark-watched \
		--geo-bypass \
		--write-description \
		--write-info-json \
		--write-thumbnail \
		--all-subs \
		--no-mtime \
		--embed-thumbnail \
		--embed-subs \
		--add-metadata"

	# youtube-dl aliases
	alias youtube-dl-best='youtube-dl \
		'"$YOUTUBE_DL_OPTIONS"' \
		--format "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" '
	alias youtube-dl-480='youtube-dl \
		'"$YOUTUBE_DL_OPTIONS"' \
		--format "bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]" '
	alias youtube-dl-720='youtube-dl \
		'"$YOUTUBE_DL_OPTIONS"' \
		--format "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]" '
	alias youtube-dl-4k='echo -e "This will transcode the video from webm to h264 which could take a long time\n\n"; \
		youtube-dl -f "bestvideo[ext=webm]+bestaudio[ext=m4a]" \
		'"$YOUTUBE_DL_OPTIONS"' \
		--recode-video mp4 '
	alias youtube-dl-playlist='youtube-dl \
		'"$YOUTUBE_DL_OPTIONS"' \
		--download-archive archive.txt \
		--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '
	alias youtube-dl-mp3='youtube-dl --extract-audio \
		'"$YOUTUBE_DL_OPTIONS"' \
		--format bestaudio \
		--download-archive archive.txt \
		--audio-format mp3 \
		--no-playlist '
	alias youtube-dl-mp3-playlist='youtube-dl --ignore-errors \
		'"$YOUTUBE_DL_OPTIONS"' \
		--format bestaudio \
		--extract-audio \
		--audio-format mp3 \
		--audio-quality 160K \
		--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" \
		--yes-playlist '
}

youtube-dl-aliases
