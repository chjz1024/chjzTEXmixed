function ber = channel(snr)
  %snr = 0;
  %std_v = 1*10^(-snr/10);
  N = 2000;
  A = [0, 0, randi([0, 1], 1, N)];
  B = zeros(N, 3);
  for i = 1:N
    B(i, :) = A(i:i+2);
  end
  C(:, 1) = mod(sum(B.*[1, 1, 1], 2), 2); % g_1 = 1, 1, 1
  C(:, 2) = mod(sum(B.*[1, 0, 1], 2), 2); % g_2 = 1, 0, 1
  
  %cr = C + std_v * randn(N, 2);
  cr = awgn(C, snr, 'measured');
  cr = cr>=0.5;
  
  path = [[0, 0; 0, 1; 1, 0; 1, 1], zeros(4, N-2)];
  newpath = zeros(4, N);
  
  z = wrapper();
  len = zeros(4, 1);
  newlen = zeros(4, 1);
  len(1) = sum(cr(1, :)~=[0, 0]) + sum(cr(2, :)~=[0, 0]);
  len(2) = sum(cr(1, :)~=[0, 0]) + sum(cr(2, :)~=[1, 1]);
  len(3) = sum(cr(1, :)~=[1, 1]) + sum(cr(2, :)~=[1, 0]);
  len(4) = sum(cr(1, :)~=[1, 1]) + sum(cr(2, :)~=[0, 1]);
  
  flag = zeros(4, 1);
  for i = 3:N
    if len(1) + sum(z.go(1, 0)~=cr(i, :)) < len(3) + sum(z.go(3, 0)~=cr(i, :))
      flag(1) = 1;
      newlen(1) = len(1) + sum(z.go(1, 0)~=cr(i, :));
    else
      flag(1) = 3;
      newlen(1) = len(3) + sum(z.go(3, 0)~=cr(i, :));
    end
    
    if len(1) + sum(z.go(1, 1)~=cr(i, :)) < len(3) + sum(z.go(3, 1)~=cr(i, :))
      flag(2) = 1;
      newlen(2) = len(1) + sum(z.go(1, 1)~=cr(i, :));
    else
      flag(2) = 3;
      newlen(2) = len(3) + sum(z.go(3, 1)~=cr(i, :));
    end
    
    if len(2) + sum(z.go(2, 0)~=cr(i, :)) < len(4) + sum(z.go(4, 0)~=cr(i, :))
      flag(3) = 2;
      newlen(3) = len(2) + sum(z.go(2, 0)~=cr(i, :));
    else
      flag(3) = 4;
      newlen(3) = len(4) + sum(z.go(4, 0)~=cr(i, :));
    end
    
    if len(2) + sum(z.go(2, 1)~=cr(i, :)) < len(4) + sum(z.go(4, 1)~=cr(i, :))
      flag(4) = 2;
      newlen(4) = len(2) + sum(z.go(2, 1)~=cr(i, :));
    else
      flag(4) = 4;
      newlen(4) = len(4) + sum(z.go(4, 1)~=cr(i, :));
    end
    newpath(1:4, :) = path(flag, :);
    newpath(:, i) = [0 1 0 1];
    path = newpath;
    len = newlen;
  end
  
  [v, i] = min(len);
  errbits = sum(path(i, :)~=A(3:end));
  ber = errbits/N;
end