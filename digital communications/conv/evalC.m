snr = -2:0.2:11;
len = length(snr);
ber = zeros(1,len);
for i = 1:len
  ber(i) = channel(snr(i));
end
semilogy(snr,ber);