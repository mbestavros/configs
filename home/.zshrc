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
# alias update="sudo fwupdmgr update; sudo dnf upgrade"

# ---Useful git shortcuts---

# git rebase
alias rebase="git fetch upstream && (git rebase upstream/main || git rebase upstream/master)"

# amend a commit
alias amend="git add . && git commit --amend && git push -f"

# rebase --continue
alias continue="git add . && git rebase --continue"

# ---Useful WSL aliases---
function cmd(){ /mnt/c/Windows/System32/cmd.exe /C "$@"; }
function chrome(){ /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe /C "$@"; }

# Shortcut to log on to SSH; change username and address!
alias csa="ssh email@address.com"
