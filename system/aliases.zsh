# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ~="cd ~"

# List dir contents aliases
# ref: http://ss64.com/osx/ls.html
# Long form no user group, color
alias l="ls -oG"
# Order by last modified, long form no user group, color
alias lt="ls -toG"
# List all except . and ..., color, mark file types, long form no user group, file size
alias la="ls -AGFoh"
# List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash"

# Clear Apple’s System Logs to improve shell startup speed
alias cleanlogs="sudo rm -rfv /private/var/log/asl/*.asl"

# Recursively delete `.DS_Store` files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
