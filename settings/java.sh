# https://stackoverflow.com/a/33513163
# https://stackoverflow.com/a/73040512/676756
if [[ -e /usr/libexec/java_home ]]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi
