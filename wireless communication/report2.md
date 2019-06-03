# 1
大家好，我负责报告的内容是RRC连接控制部分
我是报告人陈进泽

# 2
RRC全程是Radio Resource Control无线资源控制。它位于控制层协议栈第五层，用于交换配置信息并在UE与基站间达成一致

通信的最终目的是在通信各方之间交换数据（用户面数据），但是在这之前，我们需要对很多事情（特别是很多低层问题）进行通用配置。在许多高端通信系统（例如蜂窝通信）中，这些配置在通信时应当会动态地改变以获得最优配置。为此，我们需要一种特殊的控制机制来交换通信各方之间的配置信息，由此产生的该控制机制的实现称为RRC（无线资源控制）。

# 3
5G中RRC共有三种连接状态，分别为connected，inactive以及idle

一个UE在RRC连接已建立时处于connected或inactive状态，否则处于idle状态

相比于LTE，5G新增了inactive状态，是为了大量的物联网设备减少信令开销和功耗

# 4
在 RRC_INACTIVE 状态下， 终端处于省电的“睡觉”状态， 但它仍然保留部分 RAN 上下文(安全上下文， UE 能力信息等)，始终保持与网络连接， 并且可以通过类似于寻呼的消息快速从 RRC _INACTIVE 状态转移到 RRC_CONNECTED 状态， 且减少信令数量。

这里需要注意的是inactive状态到idle状态的转换是单向的

# 5
不同状态下的UE具有不同的功能，在connected情况下主要有存储AS上下文，测量，配置connected状态下的drx，CA与DC支持和信道信息反馈等

# 6
在Inactive模式下UE会进行小区重选，监测寻呼信息，获取系统信息，RAN区域更新，AS上下文存储等

# 7
Idle模式下的UE主要有配置idle状态下的drx，小区重选，获取系统信息，寻呼等。

# 8
在网络中每一层提供的服务对功能的分离是十分重要的

RRC层会为上层提供的服务有公共控制信息的广播，idle状态下的UE通知，预警信息的通知，特定信息的传输等。
而RRC层所期待的低层数据是经完整性保护，加密的无重复有序无差错的信息。

# 9
而RRC层本身提供的服务正如之前说的那样是配置信息的协调，其中包括系统信息广播，RRC连接控制，RAT间移动性支持，测量配置与报告等。

我接下来要报告的内容是RRC连接控制的流程。


# 10
# 11
无线承载RB实际就是信号的物理传输单元体，没有承载信令和数据都无法实现传输。
RRC连接控制的信令大部分由信令无线承载SRB来传递

SRB是仅用于RRC和NAS消息传输的无线承载，其中：

SRB0用于RRC信息，在逻辑信道CCCH上传递

SRB1到3均使用DCCH逻辑信道，其中SRB1用于传递RRC消息或SRB2建立前的NAS消息，SRB2用于传递NAS消息，SRB3用于传递处于双连接状态下特定的RRC消息

# 12
RRC连接建立涉及SRB1的建立。网络在完成NG连接的建立之前完成RRC连接建立。

在从5GC接收到UE上下文后，RAN使用初始AS安全激活过程激活AS安全性。

RRC连接的释放通常由网络发起。该过程可用于将UE重定向到NR频率或E-UTRA载波频率。

RRC连接的暂停由网络发起。

# 13
其他的还有很多内容，由于时间关系这里就不讲了，有兴趣的可以自行查阅331文档

# 14
在RRC连接控制过程中主要涉及到以下14个动作，接下来我们将逐个描述它们的功能以及流程

# 15
寻呼动作适用于将寻呼消息发送到idle或inactive状态下的UE

# 16
网络通过在规定的UE的寻呼场合发送寻呼消息来启动寻呼过程。网络可以通过为每个UE包含一个PagingRecord来寻址寻呼消息内的多个UE

当UE处于idle状态时，如果接收到的PagingRecord的ue-Identity与上层分配的一致，则转发ue-Identity与accessType到上层

# 17
UE处于Inactive状态的的流程如图，我这里不细讲，有兴趣的自行请查阅331文档

# 18
寻呼消息格式如图，可以看出PagingRecord中accessType是可选的。之后我将不会细讲整个动作的流程以及消息格式

# 19
在建立RRC连接或当UE恢复或重新建立RRC连接时启用RRC连接建立动作，其中本过程还用于将NAS专用信息从UE传输到网络

# 20
初始安全激活的目的时在RRC连接建立时激活AS安全性

# 21
RRC重新配置动作的目的是修改RRC连接，如建立，修改或释放RB
在EN-DC中该过程还有其他应用，如重新配置SCG的MAC，RCL，物理层和RLF定时器和常数等

# 22
Counter检查动作用于请求UE验证DRB上发送/接收的数据量，通过该过程网络可以检测到入侵者的数据插入

# 23
连接重建动作目的就是重新建立RRC连接。实际流程比较复杂这里就不讲了。

The purpose of this procedure is to re-establish the RRC connection. A UE in RRC_CONNECTED, for which AS security has been activated with SRB2 and at least one DRB setup, may initiate the procedure in order to continue the RRC connection. The connection re-establishment succeeds if the network is able to find and verify a valid UE context or, if the UE context cannot be retrieved, and the network responds with an RRCSetup according to clause 5.3.3.4. If AS security has not been activated, the UE does not initiate the procedure but instead moves to RRC_IDLE directly, with release cause 'other'. If AS security has been activated, but SRB2 and at least one DRB are not setup, the UE does not initiate the procedure but instead moves to RRC_IDLE directly, with release cause 'RRC connection failure'.

The network applies the procedure e.g as follows:
-	When AS security has been activated and the network retrieves or verifies the UE context:
-	to re-activate AS security without changing algorithms;
-	to re-establish and resume the SRB1;
When UE is re-establishing an RRC connection, and the network is not able to retrieve or verify the UE context:
-	to discard the stored AS Context and release all RBs;
-	to fallback to establish a new RRC connection.

# 24
RRC连接释放的目的是释放RRC连接资源或在特定情况下暂停RRC连接

# 25
Pcell(Primary cell，主小区)

该过程目的是释放RRC连接，其结果可能导致UE无法接入主小区

当上层请求RRC连接释放时UE启动该动作，但为了省电UE也可以不执行该过程

# 26
UE在遇到无线链路故障时需要执行相应动作来减少故障的影响，其中主要包括检测connected状态下的物理层问题，恢复对应问题以及检测无线链路的故障。在检测到无线链路的故障后UE需要向上层报告这一结果

# 27
当UE离开connected状态时会执行该动作，流程见图

# 28
当UE接收到PUCCH/SRS释放请求时会执行该动作，在该过程中UE会释放掉对应的资源

# 29
RRC连接恢复动作目的是恢复暂停的RRC连接，包括恢复SRB(s)和DRB(s)的恢复或执行RNA更新。 该动作执行结果有五种，分别是成功恢复，重新建立RRC连接，

# 30
连接恢复后网络释放、或暂停

# 31
以及网络拒绝的情况

# 32
统一接入控制动作的目的是根据上层请求执行接入禁止检查

# 33
当UE尝试建立或恢复RRC连接时，UE在接收到RRCReject时启动RRC连接拒绝动作

# 34
以上就是我报告的全部内容。在5G的体系结构中RRC是十分重要的一层，通俗的来说RRC协议就像是互联网的TCP/IP协议，没有它不同设备与基站间无法实现通信，而3GPP的5G标准发布为了等38.331的完善足足推迟了三个月，3GPP RAN2甚至在第一百次会议上正式推出了331之歌，为一个标准规范写一首歌这种事情恐怕是绝无仅有的。大家通过我刚才的介绍也可以感觉收到整个RRC协议就是在描述流程以及参数，并没有很多技术性的东西。但是没有它整个5G系统就不可能正确工作。就我来说我感觉RRC协议就是5G标准中最贴合”标准”这一词的协议。
