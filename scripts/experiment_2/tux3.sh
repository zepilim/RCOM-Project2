sudo su

# E1 of tux Y2 -> 18
# E1 of tux Y3 -> 20
# E1 of tux Y4 -> 22

ifconfig if_e1 172.16.40.1/24

# In this tux, we use WhiteShark to capture the traffic

# This is comunicating with tux4
# It shows all the ICMP packets being sent
# It communicates!
ping 172.16.40.254

# This is comunicating with tux2
# It does not show any ICMP packets being sent
# It does not communicate!
ping 172.16.41.1

# Why? Because tux3 and tux4 are in bridge40
# tux2 is in bridge41

