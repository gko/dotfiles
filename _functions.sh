# https://stackoverflow.com/a/40336333
function safe_find () {
	{ find "$@" 3>&2 2>&1 1>&3 | grep -v 'Permission denied' | grep -v 'Operation not permitted' >&3; } 3>&2 2>&1
}
