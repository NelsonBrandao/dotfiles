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

transfer() {
    # check arguments
    if [ $# -eq 0 ];
    then
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
        return 1
    fi

    # get temporarily filename, output is written to this file show progress can be showed
    tmpfile=$( mktemp -t transferXXX )

    # upload stdin or file
    file=$1

    if tty -s;
    then
        basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g')

        if [ ! -e $file ];
        then
            echo "File $file doesn't exists."
            return 1
        fi

        if [ -d $file ];
        then
            # zip directory and transfer
            zipfile=$( mktemp -t transferXXX.zip )
            cd $(dirname $file) && zip -r -q - $(basename $file) >> $zipfile
            curl --progress-bar --upload-file "$zipfile" "https://transfer.sh/$basefile.zip" >> $tmpfile
            rm -f $zipfile
        else
            # transfer file
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else
        # transfer pipe
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file" >> $tmpfile
    fi

    # cat output link
    cat $tmpfile

    # cleanup
    rm -f $tmpfile
}

clean-xdg-open() {
    xdg-open $* &> /dev/null
}