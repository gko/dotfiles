if [ -n "$proxy_host" ]; then
  _java_proxy="-Dhttp.proxyHost=$proxy_host"
  _http_proxy="$proxy_host"

  if [ -n "$proxy_login" ]; then
    _java_proxy+=" -Dhttp.proxyUser=$proxy_login " 

    if [ -n "$proxy_pass" ]; then
      _java_proxy+=" -Dhttp.proxyPassword=$proxy_pass "
      _http_proxy="$proxy_login:$proxy_pass@$proxy_host"
    else
      _http_proxy="$proxy_login@$proxy_host"
    fi
  fi

  if [ -n "$proxy_port" ]; then
    _http_proxy+=":$proxy_port"
    _java_proxy+=" -Dhttp.proxyPort=$proxy_port "
  fi

  git config --global http.proxy "http://$_http_proxy"

  #npm config set proxy "http://$_http_proxy"
  #npm config set https-proxy "http://$_http_proxy"
  
  export JAVA_OPTS="$JAVA_OPTS $_java_proxy"
  export http_proxy="http://$_http_proxy"
  export https_proxy="http://$_http_proxy"
fi
