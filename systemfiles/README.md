These files are systemfiles that needs to be placed on their right place in the
filesystem to be read by their respective programs.

#XDM
The XDM Xresources file needs to be placed in `/etc/X11/xdm/Xresources`. It
will be used by XDM at login.

The background picture is set in the `/etc/X11/xdm/Xsetup` file. I use the
image that is provided in the openSUSE tumbleweed distribution and will thereby
not provide neither the picture nor the config. It's only one row to chang,
`background=...`.

It was a bit hard to get xdm to run, but by using the systemd targets it was
doable. `systemctl get-defaults` shows the target, and `systemctl set-default`
sets it. To use xdm it should be set to `graphical.target`. For this to work
the displaymannager set in `/etc/sysconfig/displaymanager` needs to be set to
xdm. 
