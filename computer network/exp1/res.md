# wget
```
$ wget -c ftp://debian.ustc.edu.cn/debian/tools/loadlin.exe
--2019-04-23 18:57:33--  ftp://debian.ustc.edu.cn/debian/tools/loadlin.exe
           => “loadlin.exe”
正在解析主机 debian.ustc.edu.cn (debian.ustc.edu.cn)... 202.38.95.110, 2001:da8:d800:95::110
正在连接 debian.ustc.edu.cn (debian.ustc.edu.cn)|202.38.95.110|:21... 已连接。
正在以 anonymous 登录 ... 登录成功！
==> SYST ... 完成。   ==> PWD ... 完成。
==> TYPE I ... 完成。 ==> CWD (1) /debian/tools ... 完成。
==> SIZE loadlin.exe ... 42370
==> PASV ... 完成。   ==> RETR loadlin.exe ... 完成。
长度：42370 (41K) (非正式数据)

loadlin.exe         100%[===================>]  41.38K  --.-KB/s  用时 0.1s

2019-04-23 18:57:34 (330 KB/s) - “loadlin.exe” 已保存 [42370]

$ wget -b ftp://debian.ustc.edu.cn/debian/tools/loadlin.exe
继续在后台运行，pid 为 1880。
将把输出写入至 “wget-log”。

$ wget -xrA "*.txt" ftp://debian.ustc.edu.cn/debian/tools
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools
           => “debian.ustc.edu.cn/debian/.listing”
正在解析主机 debian.ustc.edu.cn (debian.ustc.edu.cn)... 202.38.95.110, 2001:da8:d800:95::110
正在连接 debian.ustc.edu.cn (debian.ustc.edu.cn)|202.38.95.110|:21... 已连接。
正在以 anonymous 登录 ... 登录成功！
==> SYST ... 完成。   ==> PWD ... 完成。
==> TYPE I ... 完成。 ==> CWD (1) /debian ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]   1.04K  --.-KB/s  用时 0s

2019-04-23 18:58:40 (13.7 MB/s) - “debian.ustc.edu.cn/debian/.listing” 已保存 [1064]

已删除 “debian.ustc.edu.cn/debian/.listing”。
拒绝 “README”。
拒绝 “README.CD-manufacture”。
拒绝 “README.html”。
拒绝 “README.mirrors.html”。
拒绝 “extrafiles”。
拒绝 “ls-lR.gz”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/tools
           => “debian.ustc.edu.cn/debian/tools/.listing”
==> CWD (1) /debian/tools ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     327  --.-KB/s  用时 0s

2019-04-23 18:58:40 (2.21 MB/s) - “debian.ustc.edu.cn/debian/tools/.listing” 已保存 [327]

已删除 “debian.ustc.edu.cn/debian/tools/.listing”。
拒绝 “loadlin.exe”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/loadlin.txt
           => “debian.ustc.edu.cn/debian/tools/loadlin.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR loadlin.txt ... 完成。
长度：32663 (32K)

debian.ustc.edu.cn/ 100%[===================>]  31.90K  --.-KB/s  用时 0.1s

2019-04-23 18:58:40 (238 KB/s) - “debian.ustc.edu.cn/debian/tools/loadlin.txt” 已保存 [32663]

--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/.listing”
==> CWD (1) /debian/tools/win32-loader ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     451  --.-KB/s  用时 0s

2019-04-23 18:58:40 (1.78 MB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/.listing” 已保存 [451]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/.listing”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/.listing”
==> CWD (1) /debian/tools/win32-loader/oldoldstable ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     267  --.-KB/s  用时 0s

2019-04-23 18:58:40 (1.55 MB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/.listing” 已保存 [267]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/.listing”。
拒绝 “win32-loader.exe”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/win32-loader.txt
           => “debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/win32-loader.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR win32-loader.txt ... 完成。
长度：4454 (4.3K)

debian.ustc.edu.cn/ 100%[===================>]   4.35K  --.-KB/s  用时 0.1s

2019-04-23 18:58:40 (30.0 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/oldoldstable/win32-loader.txt” 已保存 [4454]

--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/.listing”
==> CWD (1) /debian/tools/win32-loader/oldstable ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     267  --.-KB/s  用时 0s

2019-04-23 18:58:40 (1.02 MB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/.listing” 已保存 [267]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/.listing”。
拒绝 “win32-loader.exe”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/win32-loader.txt
           => “debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/win32-loader.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR win32-loader.txt ... 完成。
长度：4453 (4.3K)

debian.ustc.edu.cn/ 100%[===================>]   4.35K  --.-KB/s  用时 0.1s

2019-04-23 18:58:40 (30.3 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/oldstable/win32-loader.txt” 已保存 [4453]

--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/stable/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/stable/.listing”
==> CWD (1) /debian/tools/win32-loader/stable ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     267  --.-KB/s  用时 0s

2019-04-23 18:58:40 (978 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/stable/.listing” 已保存 [267]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/stable/.listing”。
拒绝 “win32-loader.exe”。
--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/stable/win32-loader.txt
           => “debian.ustc.edu.cn/debian/tools/win32-loader/stable/win32-loader.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR win32-loader.txt ... 完成。
长度：3942 (3.8K)

debian.ustc.edu.cn/ 100%[===================>]   3.85K  --.-KB/s  用时 0.05s

2019-04-23 18:58:40 (72.5 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/stable/win32-loader.txt” 已保存 [3942]

--2019-04-23 18:58:40--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/testing/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/testing/.listing”
==> CWD (1) /debian/tools/win32-loader/testing ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     267  --.-KB/s  用时 0s

2019-04-23 18:58:41 (1.31 MB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/testing/.listing” 已保存 [267]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/testing/.listing”。
拒绝 “win32-loader.exe”。
--2019-04-23 18:58:41--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/testing/win32-loader.txt
           => “debian.ustc.edu.cn/debian/tools/win32-loader/testing/win32-loader.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR win32-loader.txt ... 完成。
长度：3935 (3.8K)

debian.ustc.edu.cn/ 100%[===================>]   3.84K  25.2KB/s  用时 0.2s

2019-04-23 18:58:41 (25.2 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/testing/win32-loader.txt” 已保存 [3935]

--2019-04-23 18:58:41--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/unstable/tools
           => “debian.ustc.edu.cn/debian/tools/win32-loader/unstable/.listing”
==> CWD (1) /debian/tools/win32-loader/unstable ... 完成。
==> PASV ... 完成。   ==> LIST ... 完成。

debian.ustc.edu.cn/     [ <=>                ]     267  --.-KB/s  用时 0s

2019-04-23 18:58:41 (1.16 MB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/unstable/.listing” 已保存 [267]

已删除 “debian.ustc.edu.cn/debian/tools/win32-loader/unstable/.listing”。
拒绝 “win32-loader.exe”。
--2019-04-23 18:58:41--  ftp://debian.ustc.edu.cn/debian/tools/win32-loader/unstable/win32-loader.txt
           => “debian.ustc.edu.cn/debian/tools/win32-loader/unstable/win32-loader.txt”
==> 不需要 CWD。
==> PASV ... 完成。   ==> RETR win32-loader.txt ... 完成。
长度：3932 (3.8K)

debian.ustc.edu.cn/ 100%[===================>]   3.84K  --.-KB/s  用时 0.02s

2019-04-23 18:58:41 (203 KB/s) - “debian.ustc.edu.cn/debian/tools/win32-loader/unstable/win32-loader.txt” 已保存 [3932]

下载完毕 --2019-04-23 18:58:41--
总用时：1.0s
下载了：6 个文件，0.6s (80.5 KB/s) 中的 52K
```

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

# FTP主动模式
```
tcpdump: listening on enp2s0, link-type EN10MB (Ethernet), capture size 262144 bytes
15:54:30.396253 IP (tos 0x10, ttl 64, id 1299, offset 0, flags [DF], proto TCP (6), length 81)
    192.168.123.117.35000 > 202.38.64.10.21: Flags [P.], cksum 0x8d9b (correct), seq 113570735:113570764, ack 2005571410, win 237, options [nop,nop,TS val 1313545730 ecr 2247439226], length 29: FTP, length: 29
	PORT 192,168,123,117,182,85
	0x0000:  4510 0051 0513 4000 4006 ef35 c0a8 7b75  E..Q..@.@..5..{u
	0x0010:  ca26 400a 88b8 0015 06c4 f3af 778a 9752  .&@.........w..R
	0x0020:  8018 00ed 8d9b 0000 0101 080a 4e4b 1e02  ............NK..
	0x0030:  85f5 337a 504f 5254 2031 3932 2c31 3638  ..3zPORT.192,168
	0x0040:  2c31 3233 2c31 3137 2c31 3832 2c38 350d  ,123,117,182,85.
	0x0050:  0a                                       .
15:54:30.396913 IP (tos 0x0, ttl 61, id 45669, offset 0, flags [DF], proto TCP (6), length 103)
    202.38.64.10.21 > 192.168.123.117.35000: Flags [P.], cksum 0xb876 (correct), seq 1:52, ack 29, win 181, options [nop,nop,TS val 2247444324 ecr 1313545730], length 51: FTP, length: 51
	200 PORT command successful. Consider using PASV.
	0x0000:  4500 0067 b265 4000 3d06 44dd ca26 400a  E..g.e@.=.D..&@.
	0x0010:  c0a8 7b75 0015 88b8 778a 9752 06c4 f3cc  ..{u....w..R....
	0x0020:  8018 00b5 b876 0000 0101 080a 85f5 4764  .....v........Gd
	0x0030:  4e4b 1e02 3230 3020 504f 5254 2063 6f6d  NK..200.PORT.com
	0x0040:  6d61 6e64 2073 7563 6365 7373 6675 6c2e  mand.successful.
	0x0050:  2043 6f6e 7369 6465 7220 7573 696e 6720  .Consider.using.
	0x0060:  5041 5356 2e0d 0a                        PASV...
15:54:30.396925 IP (tos 0x10, ttl 64, id 1300, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.35000 > 202.38.64.10.21: Flags [.], cksum 0x636c (correct), seq 29, ack 52, win 237, options [nop,nop,TS val 1313545730 ecr 2247444324], length 0
	0x0000:  4510 0034 0514 4000 4006 ef51 c0a8 7b75  E..4..@.@..Q..{u
	0x0010:  ca26 400a 88b8 0015 06c4 f3cc 778a 9785  .&@.........w...
	0x0020:  8010 00ed 636c 0000 0101 080a 4e4b 1e02  ....cl......NK..
	0x0030:  85f5 4764                                ..Gd
15:54:30.396963 IP (tos 0x10, ttl 64, id 1301, offset 0, flags [DF], proto TCP (6), length 58)
    192.168.123.117.35000 > 202.38.64.10.21: Flags [P.], cksum 0xb6b6 (correct), seq 29:35, ack 52, win 237, options [nop,nop,TS val 1313545730 ecr 2247444324], length 6: FTP, length: 6
	LIST
	0x0000:  4510 003a 0515 4000 4006 ef4a c0a8 7b75  E..:..@.@..J..{u
	0x0010:  ca26 400a 88b8 0015 06c4 f3cc 778a 9785  .&@.........w...
	0x0020:  8018 00ed b6b6 0000 0101 080a 4e4b 1e02  ............NK..
	0x0030:  85f5 4764 4c49 5354 0d0a                 ..GdLIST..
15:54:30.397575 IP (tos 0x0, ttl 61, id 22570, offset 0, flags [DF], proto TCP (6), length 60)
    202.38.64.10.20 > 192.168.123.117.46677: Flags [S], cksum 0xcf19 (correct), seq 2025201487, win 5840, options [mss 1460,sackOK,TS val 2247444325 ecr 0,nop,wscale 5], length 0
	0x0000:  4500 003c 582a 4000 3d06 9f43 ca26 400a  E..<X*@.=..C.&@.
	0x0010:  c0a8 7b75 0014 b655 78b6 1f4f 0000 0000  ..{u...Ux..O....
	0x0020:  a002 16d0 cf19 0000 0204 05b4 0402 080a  ................
	0x0030:  85f5 4765 0000 0000 0103 0305            ..Ge........
15:54:30.397588 IP (tos 0x0, ttl 64, id 0, offset 0, flags [DF], proto TCP (6), length 60)
    192.168.123.117.46677 > 202.38.64.10.20: Flags [S.], cksum 0x3a3b (correct), seq 1623027055, ack 2025201488, win 28960, options [mss 1460,sackOK,TS val 1313545731 ecr 2247444325,nop,wscale 7], length 0
	0x0000:  4500 003c 0000 4000 4006 f46d c0a8 7b75  E..<..@.@..m..{u
	0x0010:  ca26 400a b655 0014 60bd 6d6f 78b6 1f50  .&@..U..`.mox..P
	0x0020:  a012 7120 3a3b 0000 0204 05b4 0402 080a  ..q.:;..........
	0x0030:  4e4b 1e03 85f5 4765 0103 0307            NK....Ge....
15:54:30.398025 IP (tos 0x0, ttl 61, id 22572, offset 0, flags [DF], proto TCP (6), length 52)
    202.38.64.10.20 > 192.168.123.117.46677: Flags [.], cksum 0xd970 (correct), seq 1, ack 1, win 183, options [nop,nop,TS val 2247444325 ecr 1313545731], length 0
	0x0000:  4500 0034 582c 4000 3d06 9f49 ca26 400a  E..4X,@.=..I.&@.
	0x0010:  c0a8 7b75 0014 b655 78b6 1f50 60bd 6d70  ..{u...Ux..P`.mp
	0x0020:  8010 00b7 d970 0000 0101 080a 85f5 4765  .....p........Ge
	0x0030:  4e4b 1e03                                NK..
15:54:30.398045 IP (tos 0x8, ttl 61, id 22574, offset 0, flags [DF], proto TCP (6), length 52)
    202.38.64.10.20 > 192.168.123.117.46677: Flags [F.], cksum 0xd96f (correct), seq 1, ack 1, win 183, options [nop,nop,TS val 2247444325 ecr 1313545731], length 0
	0x0000:  4508 0034 582e 4000 3d06 9f3f ca26 400a  E..4X.@.=..?.&@.
	0x0010:  c0a8 7b75 0014 b655 78b6 1f50 60bd 6d70  ..{u...Ux..P`.mp
	0x0020:  8011 00b7 d96f 0000 0101 080a 85f5 4765  .....o........Ge
	0x0030:  4e4b 1e03                                NK..
15:54:30.398063 IP (tos 0x0, ttl 61, id 45671, offset 0, flags [DF], proto TCP (6), length 91)
    202.38.64.10.21 > 192.168.123.117.35000: Flags [P.], cksum 0x4e50 (correct), seq 52:91, ack 35, win 181, options [nop,nop,TS val 2247444325 ecr 1313545730], length 39: FTP, length: 39
	150 Here comes the directory listing.
	0x0000:  4500 005b b267 4000 3d06 44e7 ca26 400a  E..[.g@.=.D..&@.
	0x0010:  c0a8 7b75 0015 88b8 778a 9785 06c4 f3d2  ..{u....w.......
	0x0020:  8018 00b5 4e50 0000 0101 080a 85f5 4765  ....NP........Ge
	0x0030:  4e4b 1e02 3135 3020 4865 7265 2063 6f6d  NK..150.Here.com
	0x0040:  6573 2074 6865 2064 6972 6563 746f 7279  es.the.directory
	0x0050:  206c 6973 7469 6e67 2e0d 0a              .listing...
15:54:30.398132 IP (tos 0x8, ttl 64, id 37858, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.46677 > 202.38.64.10.20: Flags [F.], cksum 0xd941 (correct), seq 1, ack 2, win 227, options [nop,nop,TS val 1313545732 ecr 2247444325], length 0
	0x0000:  4508 0034 93e2 4000 4006 608b c0a8 7b75  E..4..@.@.`...{u
	0x0010:  ca26 400a b655 0014 60bd 6d70 78b6 1f51  .&@..U..`.mpx..Q
	0x0020:  8011 00e3 d941 0000 0101 080a 4e4b 1e04  .....A......NK..
	0x0030:  85f5 4765                                ..Ge
15:54:30.398590 IP (tos 0x8, ttl 61, id 22576, offset 0, flags [DF], proto TCP (6), length 52)
    202.38.64.10.20 > 192.168.123.117.46677: Flags [.], cksum 0xd96c (correct), seq 2, ack 2, win 183, options [nop,nop,TS val 2247444326 ecr 1313545732], length 0
	0x0000:  4508 0034 5830 4000 3d06 9f3d ca26 400a  E..4X0@.=..=.&@.
	0x0010:  c0a8 7b75 0014 b655 78b6 1f51 60bd 6d71  ..{u...Ux..Q`.mq
	0x0020:  8010 00b7 d96c 0000 0101 080a 85f5 4766  .....l........Gf
	0x0030:  4e4b 1e04                                NK..
15:54:30.398698 IP (tos 0x0, ttl 61, id 45673, offset 0, flags [DF], proto TCP (6), length 76)
    202.38.64.10.21 > 192.168.123.117.35000: Flags [P.], cksum 0x9ddb (correct), seq 91:115, ack 35, win 181, options [nop,nop,TS val 2247444326 ecr 1313545730], length 24: FTP, length: 24
	226 Directory send OK.
	0x0000:  4500 004c b269 4000 3d06 44f4 ca26 400a  E..L.i@.=.D..&@.
	0x0010:  c0a8 7b75 0015 88b8 778a 97ac 06c4 f3d2  ..{u....w.......
	0x0020:  8018 00b5 9ddb 0000 0101 080a 85f5 4766  ..............Gf
	0x0030:  4e4b 1e02 3232 3620 4469 7265 6374 6f72  NK..226.Director
	0x0040:  7920 7365 6e64 204f 4b2e 0d0a            y.send.OK...
15:54:30.398746 IP (tos 0x10, ttl 64, id 1302, offset 0, flags [DF], proto TCP (6), length 52)
    192.168.123.117.35000 > 202.38.64.10.21: Flags [.], cksum 0x6324 (correct), seq 35, ack 115, win 237, options [nop,nop,TS val 1313545732 ecr 2247444325], length 0
	0x0000:  4510 0034 0516 4000 4006 ef4f c0a8 7b75  E..4..@.@..O..{u
	0x0010:  ca26 400a 88b8 0015 06c4 f3d2 778a 97c4  .&@.........w...
	0x0020:  8010 00ed 6324 0000 0101 080a 4e4b 1e04  ....c$......NK..
	0x0030:  85f5 4765                                ..Ge
```

# FTP
```
连接到 home.ustc.edu.cn。
220-=================================================================
220-
220-         Welcome to USTC Student FTP/WWW Server
220-          欢迎来到中国科大学生FTP/主页服务器
220-
220-注意:
220-1.  Mailbox目录下是以前的邮件, 如果不需要请删除.
220-
220-2.  上传个人主页请创建目录 public_html, 主页的第一个文件是index.html
220-
220-3.  用户的帐号和密码取自邮件服务器, 因此修改密码请在邮件服务器上进行.
220-    修改密码后大约1个小时, 本系统会进行同步.
220-
220-
220
530 Please login with USER and PASS.
用户(home.ustc.edu.cn:(none)): chjz
331 Please specify the password.
密码:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
200 PORT command successful. Consider using PASV.
150 Here comes the directory listing.
226 Directory send OK.
ftp> passive
Passive mode on.
ftp> ls
227 Entering Passive Mode (202,38,64,10,189,114)
150 Here comes the directory listing.
226 Directory send OK.
```