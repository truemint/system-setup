# The following code loads Hyprland with uwsm
# Reference: https://wiki.hyprland.org/Useful-Utilities/Systemd-start/

if uwsm check may-start && uwsm select; then
	exec systemd-cat -t uwsm_start uwsm start default
fi

