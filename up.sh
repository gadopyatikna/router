sudo sysctl net.ipv4.ip_forward # check current val
sudo cat /etc/sysctl.d/99-ipforward.conf # should survive reboot

sudo sysctl -w net.ipv4.ip_forward=1
sudo nmcli connection up "Wired connection 1"
ls /etc/NetworkManager/system-connections/ # should survive reboot
sudo systemctl restart dnsmasq
