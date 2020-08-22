
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
