is-osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

# Create a new directory and enter it
mkd() {
    mkdir -vp "$@" && cd "$@"
}

# Simple web server
serve() {
    local PORT=${1:-8000}
    local ip=$(ipconfig getifaddr en1);
	sleep 1 && open "http://${ip}:${port}/" &
    python2 -m SimpleHTTPServer "$PORT"
}

# Simple php server
phpserver() {
	local port="${1:-4000}";
	local ip=$(ipconfig getifaddr en1);
	sleep 1 && open "http://${ip}:${port}/" &
	php -S "${ip}:${port}";
}

# Add to begin of path
prepend-path() {
    [ -d $1 ] && PATH="$1:$PATH"
}

# Add to end of path
append-path() {
    [ -d $1 ] && PATH="$PATH:$1"
}

clean-xdg-open() {
    xdg-open $* &> /dev/null
}

kill-port() {
    lsof -i tcp:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}
