## Add rules to allow SSH through VPN
sudo ip rule add table 128 from 130.63.110.191
sudo ip route add table 128 to 130.63.110.0/24 dev enxb827eb92cafb
sudo ip route add table 128 default via 130.63.110.1

## Connect using openvpn
#sudo openvpn CA\ Toronto.ovpn
