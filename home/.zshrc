# This is the beginning of my personal .bashrc

# ---Startup message and fortune!---
# fortune needs to be installed for this to work.
echo "$(whoami), welcome to $(uname -n)!\n"
fortune
echo "\n------------------------------------------------"
ls

# ---Functions and aliases for things---

# cl (change and list): change directory, then list directories
function cl(){ builtin cd "$@" && ls; }

# Do the same thing in case cd is used.
function cd() { builtin cd "$@" && ls; }

# List directories after clearing console
alias clear="clear && ls"

# ---Update aliases---

# Ubuntu
# alias update="sudo apt update && sudo apt upgrade"

# Fedora
# alias update="sudo fwupdmgr refresh; sudo fwupdmgr update; sudo dnf upgrade --refresh; flatpak update -u -y"

# Other update commands: ; asdf update; asdf plugin update --all

# ---Useful git shortcuts---

# git rebase
alias rebase="git fetch upstream && (git rebase upstream/main || git rebase upstream/master)"

# amend a commit
alias amend="git add . && git commit --amend && git push -f"

# rebase --continue
alias continue="git add . && git rebase --continue"

# ---Useful WSL aliases---
#function cmd(){ /mnt/c/Windows/System32/cmd.exe /C "$@"; }
#function chrome(){ /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe /C "$@"; }

# Shortcut to log on to SSH; change username and address!
#alias csa="ssh email@address.com"

# Path exports
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# Optional user bin directories
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.bin"

# Setup asdf
# . "$HOME/.asdf/asdf.sh"
# . ~/.asdf/plugins/golang/set-env.zsh

# Restart redlib
alias restart-redlib="systemctl stop --user redlib.service && systemctl start --user redlib.service"

# Start shizuku
alias shizuku="adb shell /data/app/~~s75XuJKoqxhiIJlul23grw==/moe.shizuku.privileged.api-66TGobX1FuI_UdXuPAk3-A==/lib/arm64/libshizuku.so"
