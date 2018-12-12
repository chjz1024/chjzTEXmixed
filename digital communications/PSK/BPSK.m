function ber = BPSK(snr)
  fc=2;
  %snr = 5
  fs=16;
  N=10000;
  Ts=1;
%  B=1/Ts;
  ts=1/fs;
  t=0:ts:N*Ts-ts;
  N_sample=Ts*fs;
  
  P = 0.5*0.5;
  std_v=sqrt(P/10^(snr/10));
  
  A=2*randi([0,1],1,N)-1;
  
  span = 6;
  h = rcosdesign(0.5,span,N_sample);
  S = upsample(A,N_sample);
  S = filter(h,1,S);
  
  X=S.*cos(2*pi*fc*t);
  
  X = X + randn(1,length(X))*std_v;
  
  r = X.*cos(2*pi*fc*t);
  baseRec = filter(h,1,r);
  Br = 2*(baseRec(length(h):N_sample:end)>0)-1;
  errbit = sum(Br~=A(1:N-span));
  ber = errbit/(N-span);
end