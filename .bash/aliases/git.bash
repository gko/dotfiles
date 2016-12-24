# Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gm='git merge'
alias gst='git status'
alias gs='git status; git submodule status'
alias gss='git status -s'
alias gsa='git submodule add'
alias gsu='git submodule init && git submodule update && git submodule foreach "(git checkout master; git pull) &"'
alias gpu='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gc='git commit -v'
alias gcu='git reset --soft HEAD^ '
alias gr='git reset'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gl='git log'
alias gll='git log --graph --pretty=oneline --abbrev-commit --decorate --all'
alias fix='git commit --amend -C HEAD'

function gd() {
  local cmd="git diff $@"

  if [ $HAS_VIM = true ]; then
    cmd+=" | vim -R -"
  fi

  eval $cmd
}

function gdc() {
  local cmd="git diff --cached $@"

  if [ $HAS_VIM = true ]; then
    cmd+=" | vim -R -"
  fi

  eval $cmd
}
