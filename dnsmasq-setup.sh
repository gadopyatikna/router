sudo systemctl edit dnsmasq


[Unit]
After=sys-subsystem-net-devices-eth0.device
Wants=sys-subsystem-net-devices-eth0.device

[Service]
ExecStartPre=/bin/sh -c 'until ip link show eth0 | grep -q "state UP"; do sleep 1; done'
