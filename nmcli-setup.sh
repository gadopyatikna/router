nmcli device
nmcli connection show
sudo nmcli connection modify "Wired connection 1" ipv4.addresses 192.168.50.1/24 ipv4.method manual
sudo nmcli connection up "Wired connection 1"
nmcli connection show "Wired connection 1"
