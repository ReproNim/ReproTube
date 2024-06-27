#!/bin/bash

set -eu

# fetch subtitles for video file(s) if there is none
mkdir -p .datalad/status
subs_done=.datalad/status/fetched-subs.log
touch "$subs_done"  # to >> or grep  at the beginning of the universe

for f in "$@"; do
    fbase=${f%.*}
    vtts=$(/bin/ls -d "$fbase".*.vtt 2>/dev/null || :)
    if [ ! -z "$vtts" ]; then
        # echo "$fbase: already has some vtts" # : $vtts"
        continue
    fi
    if grep -q "^$f" $subs_done; then
        # echo "$f: already was getting subs, might have none"
        continue
    fi
    url=$(git annex whereis --in web "$f" | awk '/^ *web:/{print $2;}')
    echo "$fbase: getting some for $url"
    yt-dlp --write-subs --write-auto-subs -k --sub-lang=en,ua,ru --skip-download -o "$fbase" "$url" && status=ok || status=error 
    echo -e "$f\t$url\t$(date)\t$status" >> "$subs_done"
done
