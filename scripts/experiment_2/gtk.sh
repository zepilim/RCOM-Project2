#reset system configuration
/system reset-configuration
y 
[ENTER]

#add bridges and show them
/interface bridge add name=bridge40
/interface bridge add name=bridge41
/interface bridge print

# remove tuxY3, tuxY4 and turxY2 ports from default bridge
/interface bridge port remove [find interface=ether18]
/interface bridge port remove [find interface=ether20]
/interface bridge port remove [find interface=ether22]

# add ports to corrct bridges
# tuxY2 -> bridge41
# tuxY3, tuxY4 -> bridge40
/interface bridge port add bridge=bridge41 interface=ether18
/interface bridge port add bridge=bridge40 interface=ether20
/interface bridge port add bridge=bridge40 interface=ether22