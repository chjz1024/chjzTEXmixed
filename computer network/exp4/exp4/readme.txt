exp_code_gbn:
Makefile文件中“-lpthread”需改成“-pthread”
rdt_gbn_sender.c文件中第278行“ptr_pkt->state = RDT_PKT_ST_SENT;”换到第275行“udt_sendto( sock_fd, ptr_pkt->rdt_pkt, ptr_pkt->pkt_len, 0,(struct sockaddr *)recv_addr_ptr, sizeof(*recv_addr_ptr) );”之前