# https://stackoverflow.com/a/33513163
if [[ -e /usr/libexec/java_home ]]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi
