
| File | Instructions | Description |
| ------------- | ------------- | ------------- | 
| fstab  | goes in /etc/fstab  | tmpfs for various temp/log directories |
| synaptic_config | is executed on login | configures the clickpad |
| sysctls | goes in /etc/sysctl | lowers the swappiness parameter |

**Install tlp**
sudo apt install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms

Bash alias to fix scroll gesture:

alias fix_touchpad="sudo modprobe -r psmouse && sudo modprobe psmouse"

Install libimobiledevice-utils for iOS devices access.

Enable USB wakeup:
* Run `grep . /sys/bus/usb/devices/*/product` to figure out on which port the keyboard is.
* Modify and copy /etc/systemd/system/usb-wakeup.service
* sudo systemctl enable usb-wakeup.service 
* sudo systemctl start usb-wakeup.service  

Keychron:
* /etc/systemd/system/keychron.service
* sudo systemctl enable keychron.service 
* sudo systemctl start keychron.service  

