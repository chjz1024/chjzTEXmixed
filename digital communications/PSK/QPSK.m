function ber = QPSK(snr)
  fc=2;
  %snr = 5;
  fs=16;
  N=10000;
  Ts=1;
%  B=1/Ts;
  ts=1/fs; 
  t=0:ts:N*Ts-ts;
  N_sample=Ts*fs;

  P = 1*0.5^2;
  std_v=sqrt(P/10^(snr/10));
  
  A=2*randi([0, 1], 2, N)-1;
  
  span = 6;
  h = rcosdesign(0.5, span, N_sample);
  S(1, :) = upsample(A(1, :), N_sample);
  S(2, :) = upsample(A(2, :), N_sample);
  S(1, :) = filter(h, 1, S(1, :));
  S(2, :) = filter(h, 1, S(2, :));
  X = S.*cos(2*pi*fc*t-pi/2*(0:1)');
  
  X = X + randn(2, length(X))*std_v;
  
  r = X.*cos(2*pi*fc*t-pi/2*(0:1)');
  baseRec(1, :) = filter(h, 1, r(1, :));
  baseRec(2, :) = filter(h, 1, r(2, :));
  Br = 2*(baseRec(:, length(h):N_sample:end)>0)-1;
  det = Br ~= A(:, 1:N-span);
  errbit = sum(sum(abs(det))~=zeros(1, N-span));
  ber = errbit/(N-span);
end
%{
X=S.*cos(2*pi*fc*t);

X = X + randn(1, length(X))*std_v;

r = X.*cos(2*pi*fc*t);
baseRec = filter(h, 1, r);
Br = 2*(baseRec(1+length(h):N_sample:end)>0)-1;
errbit = sum([Br, zeros(1, span)]~=A);
ber = errbit/N;
%}
