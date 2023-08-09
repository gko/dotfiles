# https://stackoverflow.com/a/33513163
# https://stackoverflow.com/a/73040512/676756
# sudo ln -s "$(brew --prefix openjdk)/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
if [[ -e /usr/libexec/java_home ]]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi
