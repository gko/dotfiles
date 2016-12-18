# some checks
if vim --version &> /dev/null; then
  HAS_VIM=true
else
  HAS_VIM=false
fi
