# iptables configuration
Some `iptables` (net-firewall/iptables) stuff. I don't know where to put them.

```
katt@gentoo ~ % sudo iptables -S 
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p tcp -m tcp --dport 6667 -j ACCEPT

katt@gentoo ~ % sudo ip6tables -S 
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p tcp -m tcp --dport 6667 -j ACCEPT
```
