export ROCKET_GIT_DIR="$HOME/.oh-my-zsh/plugins/rocket-git"
export ROCKET_GIT_PLUGIN="$ROCKET_GIT_DIR/rocket-git.plugin.zsh"

alias gst="git status"
alias glg="git lg"
alias gbr="git branch"

alias gco="git checkout"
alias gcob="git checkout -b"
alias gcm="git checkout master"

alias gpl="git pull"
alias gpsh="git push"
alias gpf="git push -f"

alias gci="git add . && git commit"
alias gca="git add . && git commit --amend --no-edit"
alias gcd="$ROCKET_GIT_DIR/gcd.sh"

alias grb="git rebase"
alias grm="git rebase master"

alias lint="npm run lint:err"
alias dev="./server.sh stage316.s1"

alias edital="nvim $ROCKET_GIT_PLUGIN"
alias updateal="git -C $ROCKET_GIT_DIR pull && sourceal"
alias publishal="git -C $ROCKET_GIT_DIR add . && git -C $ROCKET_GIT_DIR commit && git -C $ROCKET_GIT_DIR push"
alias sourceal="source $ROCKET_GIT_PLUGIN"
