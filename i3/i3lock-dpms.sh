#!/bin/sh
#
# Because i3lock no longer blanks the screen automatically
#

revert() {
	xset dpms 0 0 0
}
trap revert SIGHUP SIGINT SIGTERM
xset +dpms dpms 5 5 5
i3lock -n
revert
exit 0
