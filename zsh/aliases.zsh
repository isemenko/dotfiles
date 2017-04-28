alias reload!='. ~/.zshrc'

#cat with syntax highlighting
alias c='pygmentize -O style=monokai -f console256 -g'
# Quick search in a directory for a string. use -iru to search directories ack usually ignores (like .git)
alias s='ack -i'


alias hosts='sudo $EDITOR /etc/hosts'
alias snippets='vim ~/.DOTFILES/snippets.txt'
#list only directories
alias lsd='ls -l | grep "^d"'

#network
alias myip="curl -s icanhazip.com"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig|grep en0: -A 3"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias httpflow="sudo tcpflow -c -i lo0 src or dst host localhost and port 8080"

# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias g="git"
alias v="vim"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias mvn="mvn-color"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
    done

alias t='multitail -F /usr/local/etc/multitail.conf -cS log4j -f $1'
#alias zwl='multitail -F /usr/local/etc/multitail.conf -cS log4j -f /usr/local/apache-tomcat-7.0.40/logs/zoomdata-websocket.log'
alias zw='tail -f /usr/local/apache-tomcat-7.0.56/logs/zoomdata-websocket.log|cut -d " " -f 2-'
alias zwl='tail -f /usr/local/apache-tomcat-7.0.56/logs/zoomdata-websocket.log|~/tools/pygments.streaming/pygmentize -s -O style=monokai -f console256 -l json'
alias psa='ps -A'
alias epoch='date -r$1'
alias master='git checkout master'
alias pull='git pull'

alias diffdir='diff -qr $1 $2'

#suffix aliases
alias -s conf=vim
alias -s xml=vim

