# network
alias GET="curl -X GET -L"
alias POST="curl -X POST -L"
alias PUT="curl -X PUT -L"
alias DELETE="curl -X DELETE -L"
alias PATCH="curl --request PATCH -L"
alias OPTIONS="curl -i -X OPTIONS -L"
alias HEAD="curl -I -L"

# who listens on ports
alias servers="netstat -tulp" #n"
alias sniff="sudo ngrep -W byline -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"
