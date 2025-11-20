sudo su

# E1 if tux Y3 -> 20
# E2 if tux Y4 -> 22

# shows the network interfaces and their configurations
ifconfig 
ifconfig if_e1 172.16.40.1/24

# TUX 3
# if_e1: MAC 8c:90:2d:fd:a5:fb
#        IP 172.16.40.1/24

# Check the connectivity with TUX 4
ping 172.16.40.254

# Routes of IP packets recognized by the system
route -n

# Devices recognized in the ARP table
arp -a 

# Remove the ARP entry for TUX 4
arp -d 172.16.40.254

# The IP for TUX 4 should no longer be in the ARP table
arp -a

# Check the connectivity again with TUX 4
ping 172.16.40.254

# In WhiteShark, the TUX3 sends a ARP Broadcast request to get the MAC address of the device that has the IP 172.16.40.254

# The IP for TUX 4 should now be back in the ARP table
arp -a