function [ yht ] = dpcm_decoder(a_q, yh)
N = length(yh);
p = length(a_q);
yht = zeros(N, 1);
yht(1:p) = yh(1:p);
for i = p+1:N
yt = a_q' * yht(i-1:-1:i-p);
yht(i) = yt + yh(i);
end
end