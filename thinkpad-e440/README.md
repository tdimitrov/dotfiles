
| File | Instructions | Description |
| ------------- | ------------- | ------------- | 
| fstab  | goes in /etc/fstab  | tmpfs for various temp/log directories |
| synaptic_config | is executed on login | configures the clickpad |
| sysctls | goes in /etc/sysctl | lowers the swappiness parameter |

**Install tlp**

Bash alias to fix scroll gesture:

alias fix_touchpad="sudo modprobe -r psmouse && sudo modprobe psmouse"

