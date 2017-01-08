# some checks
if vim --version &> /dev/null; then
  HAS_VIM=true
else
  HAS_VIM=false
fi

if [ ! -d ~/go ] && [ ! -f ~/go ]; then
  mkdir ~/go
fi

export GOPATH=~/go
