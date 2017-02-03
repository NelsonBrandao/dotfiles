# Calculator
calc() {
    echo "$*" | bc -l;
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
function phpserver() {
	local port="${1:-4000}";
	local ip=$(ipconfig getifaddr en1);
	sleep 1 && open "http://${ip}:${port}/" &
	php -S "${ip}:${port}";
}

# Add to path
prepend-path() {
    [ -d $1 ] && PATH="$1:$PATH"
}

# Transfer files from the command line
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }; alias transfer=transfer

open() {
    xdg-open $* &> /dev/null    
#    if [ $* > 0 ] ; then
#        if [ -d $1 ] ; then
#            nautilus $1 > /dev/null 2>&1
#        else
#            xdg-open $* &> /dev/null
#        fi
#    else
#        nautilus . > /dev/null 2>&1
#    fi
}
