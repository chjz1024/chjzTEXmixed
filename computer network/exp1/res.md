# tcpdump
```
tcpdump: listening on enp2s0, link-type EN10MB (Ethernet), capture size 262144 bytes
15:37:51.942971 IP (tos 0x10, ttl 64, id 57221, offset 0, flags [DF], proto TCP (6), length 58)
    192.168.123.117.48038 > 202.38.64.10.21: Flags [P.], cksum 0xb6dc (correct), seq 1416575186:1416575192, ack 1091109211, win 237, options [nop,nop,TS val 2303294215 ecr 1900791543], length 6: FTP, length: 6
	PASV
	0x0000:  4510 003a df85 4000 4006 14da c0a8 7b75  E..:..@.@.....{u
	0x0010:  ca26 400a bba6 0015 546f 38d2 4109 015b  .&@.....To8.A..[
	0x0020:  8018 00ed b6dc 0000 0101 080a 8949 7b07  .............I{.
	0x0030:  714b c6f7 5041 5356 0d0a                 qK..PASV..
15:37:51.959955 IP (tos 0x0, ttl 61, id 18243, offset 0, flags [DF], proto TCP (6), length 101)
    202.38.64.10.21 > 192.168.123.117.48038: Flags [P.], cksum 0xaf11 (correct), seq 1:50, ack 6, win 181, options [nop,nop,TS val 1900805655 ecr 2303294215], length 49: FTP, length: 49
	227 Entering Passive Mode (202,38,64,10,71,173)
	0x0000:  4500 0065 4743 4000 3d06 b001 ca26 400a  E..eGC@.=....&@.
	0x0010:  c0a8 7b75 0015 bba6 4109 015b 546f 38d8  ..{u....A..[To8.
	0x0020:  8018 00b5 af11 0000 0101 080a 714b fe17  ............qK..
	0x0030:  8949 7b07 3232 3720 456e 7465 7269 6e67  .I{.227.Entering
	0x0040:  2050 6173 7369 7665 204d 6f64 6520 2832  .Passive.Mode.(2
	0x0050:  3032 2c33 382c 3634 2c31 302c 3731 2c31  02,38,64,10,71,1
	0x0060:  3733 290d 0a                             73)..
15:37:51.959998 IP (tos 0x10, ttl 64, id 57222, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.48038 > 202.38.64.10.21: Flags [.], cksum 0x3024 (correct), seq 6, ack 50, win 237, options [nop,nop,TS val 2303294232 ecr 1900805655], length 0
	0x0000:  4510 0034 df86 4000 4006 14df c0a8 7b75  E..4..@.@.....{u
	0x0010:  ca26 400a bba6 0015 546f 38d8 4109 018c  .&@.....To8.A...
	0x0020:  8010 00ed 3024 0000 0101 080a 8949 7b18  ....0$.......I{.
	0x0030:  714b fe17                                qK..
15:37:51.960134 IP (tos 0x0, ttl 64, id 10381, offset 0, flags [DF], proto TCP (6), length 60)
    192.168.123.117.59606 > 202.38.64.10.18349: Flags [S], cksum 0x1c7a (correct), seq 1820381632, win 29200, options [mss 1460,sackOK,TS val 2303294232 ecr 0,nop,wscale 7], length 0
	0x0000:  4500 003c 288d 4000 4006 cbe0 c0a8 7b75  E..<(.@.@.....{u
	0x0010:  ca26 400a e8d6 47ad 6c80 d1c0 0000 0000  .&@...G.l.......
	0x0020:  a002 7210 1c7a 0000 0204 05b4 0402 080a  ..r..z..........
	0x0030:  8949 7b18 0000 0000 0103 0307            .I{.........
15:37:51.974086 IP (tos 0x0, ttl 61, id 0, offset 0, flags [DF], proto TCP (6), length 60)
    202.38.64.10.18349 > 192.168.123.117.59606: Flags [S.], cksum 0x02db (correct), seq 1112982325, ack 1820381633, win 5792, options [mss 1460,sackOK,TS val 1900805672 ecr 2303294232,nop,wscale 5], length 0
	0x0000:  4500 003c 0000 4000 3d06 f76d ca26 400a  E..<..@.=..m.&@.
	0x0010:  c0a8 7b75 47ad e8d6 4256 c335 6c80 d1c1  ..{uG...BV.5l...
	0x0020:  a012 16a0 02db 0000 0204 05b4 0402 080a  ................
	0x0030:  714b fe28 8949 7b18 0103 0305            qK.(.I{.....
15:37:51.974135 IP (tos 0x0, ttl 64, id 10382, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.59606 > 202.38.64.10.18349: Flags [.], cksum 0x4752 (correct), seq 1, ack 1, win 229, options [nop,nop,TS val 2303294246 ecr 1900805672], length 0
	0x0000:  4500 0034 288e 4000 4006 cbe7 c0a8 7b75  E..4(.@.@.....{u
	0x0010:  ca26 400a e8d6 47ad 6c80 d1c1 4256 c336  .&@...G.l...BV.6
	0x0020:  8010 00e5 4752 0000 0101 080a 8949 7b26  ....GR.......I{&
	0x0030:  714b fe28                                qK.(
15:37:51.974212 IP (tos 0x10, ttl 64, id 57223, offset 0, flags [DF], proto TCP (6), length 58)
    192.168.123.117.48038 > 202.38.64.10.21: Flags [P.], cksum 0x8360 (correct), seq 6:12, ack 50, win 237, options [nop,nop,TS val 2303294246 ecr 1900805655], length 6: FTP, length: 6
	LIST
	0x0000:  4510 003a df87 4000 4006 14d8 c0a8 7b75  E..:..@.@.....{u
	0x0010:  ca26 400a bba6 0015 546f 38d8 4109 018c  .&@.....To8.A...
	0x0020:  8018 00ed 8360 0000 0101 080a 8949 7b26  .....`.......I{&
	0x0030:  714b fe17 4c49 5354 0d0a                 qK..LIST..
15:37:51.982597 IP (tos 0x0, ttl 61, id 18245, offset 0, flags [DF], proto TCP (6), length 91)
    202.38.64.10.21 > 192.168.123.117.48038: Flags [P.], cksum 0x1adc (correct), seq 50:89, ack 12, win 181, options [nop,nop,TS val 1900805686 ecr 2303294246], length 39: FTP, length: 39
	150 Here comes the directory listing.
	0x0000:  4500 005b 4745 4000 3d06 b009 ca26 400a  E..[GE@.=....&@.
	0x0010:  c0a8 7b75 0015 bba6 4109 018c 546f 38de  ..{u....A...To8.
	0x0020:  8018 00b5 1adc 0000 0101 080a 714b fe36  ............qK.6
	0x0030:  8949 7b26 3135 3020 4865 7265 2063 6f6d  .I{&150.Here.com
	0x0040:  6573 2074 6865 2064 6972 6563 746f 7279  es.the.directory
	0x0050:  206c 6973 7469 6e67 2e0d 0a              .listing...
15:37:51.982632 IP (tos 0x8, ttl 61, id 15616, offset 0, flags [DF], proto TCP (6), length 52)
    202.38.64.10.18349 > 192.168.123.117.59606: Flags [F.], cksum 0x4773 (correct), seq 1, ack 1, win 181, options [nop,nop,TS val 1900805686 ecr 2303294246], length 0
	0x0000:  4508 0034 3d00 4000 3d06 ba6d ca26 400a  E..4=.@.=..m.&@.
	0x0010:  c0a8 7b75 47ad e8d6 4256 c336 6c80 d1c1  ..{uG...BV.6l...
	0x0020:  8011 00b5 4773 0000 0101 080a 714b fe36  ....Gs......qK.6
	0x0030:  8949 7b26                                .I{&
15:37:51.982781 IP (tos 0x8, ttl 64, id 10383, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.59606 > 202.38.64.10.18349: Flags [F.], cksum 0x4739 (correct), seq 1, ack 2, win 229, options [nop,nop,TS val 2303294255 ecr 1900805686], length 0
	0x0000:  4508 0034 288f 4000 4006 cbde c0a8 7b75  E..4(.@.@.....{u
	0x0010:  ca26 400a e8d6 47ad 6c80 d1c1 4256 c337  .&@...G.l...BV.7
	0x0020:  8011 00e5 4739 0000 0101 080a 8949 7b2f  ....G9.......I{/
	0x0030:  714b fe36                                qK.6
15:37:51.990066 IP (tos 0x8, ttl 61, id 15618, offset 0, flags [DF], proto TCP (6), length 52)
    202.38.64.10.18349 > 192.168.123.117.59606: Flags [.], cksum 0x4761 (correct), seq 2, ack 2, win 181, options [nop,nop,TS val 1900805694 ecr 2303294255], length 0
	0x0000:  4508 0034 3d02 4000 3d06 ba6b ca26 400a  E..4=.@.=..k.&@.
	0x0010:  c0a8 7b75 47ad e8d6 4256 c337 6c80 d1c2  ..{uG...BV.7l...
	0x0020:  8010 00b5 4761 0000 0101 080a 714b fe3e  ....Ga......qK.>
	0x0030:  8949 7b2f                                .I{/
15:37:51.990095 IP (tos 0x0, ttl 61, id 18247, offset 0, flags [DF], proto TCP (6), length 76)
    202.38.64.10.21 > 192.168.123.117.48038: Flags [P.], cksum 0x6a60 (correct), seq 89:113, ack 12, win 181, options [nop,nop,TS val 1900805694 ecr 2303294246], length 24: FTP, length: 24
	226 Directory send OK.
	0x0000:  4500 004c 4747 4000 3d06 b016 ca26 400a  E..LGG@.=....&@.
	0x0010:  c0a8 7b75 0015 bba6 4109 01b3 546f 38de  ..{u....A...To8.
	0x0020:  8018 00b5 6a60 0000 0101 080a 714b fe3e  ....j`......qK.>
	0x0030:  8949 7b26 3232 3620 4469 7265 6374 6f72  .I{&226.Director
	0x0040:  7920 7365 6e64 204f 4b2e 0d0a            y.send.OK...
15:37:51.990161 IP (tos 0x10, ttl 64, id 57224, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.48038 > 202.38.64.10.21: Flags [.], cksum 0x2fa2 (correct), seq 12, ack 113, win 237, options [nop,nop,TS val 2303294262 ecr 1900805686], length 0
	0x0000:  4510 0034 df88 4000 4006 14dd c0a8 7b75  E..4..@.@.....{u
	0x0010:  ca26 400a bba6 0015 546f 38de 4109 01cb  .&@.....To8.A...
	0x0020:  8010 00ed 2fa2 0000 0101 080a 8949 7b36  ..../........I{6
	0x0030:  714b fe36                                qK.6
```

# nslookup
```
> flame.nsrl.ustc.edu.cn
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
flame.nsrl.ustc.edu.cn	canonical name = revproxy.ustc.edu.cn.
Name:	revproxy.ustc.edu.cn
Address: 202.38.64.246
Name:	revproxy.ustc.edu.cn
Address: 2001:da8:d800:642::248
> 202.38.75.11
11.75.38.202.in-addr.arpa	name = infonet.ustc.edu.cn.

Authoritative answers can be found from:
> lserver 202.38.75.11
Default server: 202.38.75.11
Address: 202.38.75.11#53
> flame.nsrl.ustc.edu.cn
;; connection timed out; no servers could be reached
> 202.38.75.11
;; connection timed out; no servers could be reached
> set all
Default server: 202.38.75.11
Address: 202.38.75.11#53

Set options:
  novc			nodebug		nod2
  search		recurse
  timeout = 0		retry = 3	port = 53	ndots = 1
  querytype = A       	class = IN
  srchlist = lan
> lserver 202.38.64.1
Default server: 202.38.64.1
Address: 202.38.64.1#53
> set type=MX
> mail.ustc.edu.cn
Server:		202.38.64.1
Address:	202.38.64.1#53

mail.ustc.edu.cn	mail exchanger = 10 smtp.ustc.edu.cn.
mail.ustc.edu.cn	mail exchanger = 10 smtp2.ustc.edu.cn.
mail.ustc.edu.cn	mail exchanger = 5 smtp1.ustc.edu.cn.
> set type=ns
> ustc.edu.cn
Server:		202.38.64.1
Address:	202.38.64.1#53

ustc.edu.cn	nameserver = ns.ustc.edu.cn.
ustc.edu.cn	nameserver = mx.ustc.edu.cn.
> set type=AAAA
> ipv6.google.com
Server:		202.38.64.1
Address:	202.38.64.1#53

*** Can't find ipv6.google.com: No answer
> bbs6.ustc.edu.cn
Server:		202.38.64.1
Address:	202.38.64.1#53

Name:	bbs6.ustc.edu.cn
Address: 2001:da8:d800::3
> lserver 8.8.8.8
Default server: 8.8.8.8
Address: 8.8.8.8#53
> ipv6.google.com
Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
Name:	ipv6.google.com
Address: 203.98.7.65
> en.wikipedia.org                                                  
Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
en.wikipedia.org	canonical name = wikipedia.org.
Name:	wikipedia.org
Address: 2001:df2:e500:ed1a::1
> set type=A
> en.wikipedia.org
Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
en.wikipedia.org	canonical name = wikipedia.org.
Name:	wikipedia.org
Address: 103.102.166.224
```