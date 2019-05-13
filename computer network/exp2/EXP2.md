# 查看本机IP与MAC地址
```
sanboot@A34:~$ sudo su
[sudo] password for sanboot: 
root@A34:/home/sanboot# ifconfig eth0
eth0      Link encap:Ethernet  HWaddr 8c:89:a5:7b:66:ac  
          inet addr:192.168.133.29  Bcast:192.168.133.255  Mask:255.255.255.0
          inet6 addr: fe80::8e89:a5ff:fe7b:66ac/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:254435 errors:0 dropped:60 overruns:0 frame:0
          TX packets:48859 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:362467781 (362.4 MB)  TX bytes:22384538 (22.3 MB)
```

# 查看ARP缓存
```
root@A34:/home/sanboot# arp -n
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.133.254          ether   78:58:60:7b:6c:64   C                     eth0
192.168.133.250          ether   f8:bc:12:35:fa:d8   C                     eth0
```

# ping临近主机
```
root@A34:/home/sanboot# ping 192.168.133.30
PING 192.168.133.30 (192.168.133.30) 56(84) bytes of data.
64 bytes from 192.168.133.30: icmp_req=1 ttl=64 time=0.389 ms
64 bytes from 192.168.133.30: icmp_req=2 ttl=64 time=0.181 ms
64 bytes from 192.168.133.30: icmp_req=3 ttl=64 time=0.172 ms
64 bytes from 192.168.133.30: icmp_req=4 ttl=64 time=0.173 ms
^C
--- 192.168.133.30 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 2999ms
rtt min/avg/max/mdev = 0.172/0.228/0.389/0.094 ms
```

# 重新查看arp缓存
```
root@A34:/home/sanboot# arp -n
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.133.30           ether   8c:89:a5:7b:60:b4   C                     eth0
192.168.133.254          ether   78:58:60:7b:6c:64   C                     eth0
192.168.133.250          ether   f8:bc:12:35:fa:d8   C                     eth0
```

# 查看本机IPv4路由表与路由配置
```
root@A34:/home/sanboot# route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.133.254 0.0.0.0         UG    0      0        0 eth0
192.168.133.0   0.0.0.0         255.255.255.0   U     0      0        0 eth0
```

# 查看/proc/sys/net/ipv4/ip_forward文件内容
```
0
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
"/proc/sys/net/ipv4/ip_forward" 1 line, 2 characters
```

# 寻找到bbs.ustc.edu.cn的路由路径(windows)
```
Microsoft Windows XP [版本 5.1.2600]
(C) 版权所有 1985-2001 Microsoft Corp.

C:\Documents and Settings\stl>tracert bbs.ustc.edu.cn

Tracing route to bbs.ustc.edu.cn [202.38.64.3]
over a maximum of 30 hops:

  1     1 ms     1 ms     1 ms  192.168.133.254
  2    <1 ms    <1 ms    <1 ms  172.16.0.1
  3    <1 ms    <1 ms    <1 ms  202.38.88.94
  4   263 ms    58 ms     3 ms  202.38.96.60
  5    <1 ms    <1 ms    <1 ms  bbs.ustc.edu.cn [202.38.64.3]

Trace complete.
```

# 路由器IP组网模拟
## 动态路由
### RouterA
![RouterAR](pic/RouterA&#32;R.png)

### RouterB
![RouterBR](pic/RouterB&#32;R.png)

### RouterC
![RouterCR](pic/RouterC&#32;R.png)

## 静态路由
### Router A
![RouterAS](pic/RouterA&#32;S.png)

### Router B
![RouterBS](pic/RouterB&#32;S.png)

### Router C
![RouterCS](pic/RouterC&#32;S.png)

## ping结果
### A1主机
![pingA1](pic/Ping&#32;A1.png)

### A2主机
![pingA2](pic/Ping&#32;A2.png)

### C1主机
![pingC1](pic/Ping&#32;C1.png)