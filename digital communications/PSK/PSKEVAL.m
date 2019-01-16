snr = -10:0.1:10;
res = zeros(1, length(snr));
for i = 1:length(snr)
  res(i) = BPSK(snr(i));
end
ref = 1/2*erfc(sqrt(10.^(snr/10)));
semilogy(snr, res, snr, ref);