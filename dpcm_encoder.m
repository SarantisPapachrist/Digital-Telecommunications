function [ a_q, yh, y ] = dpcm_encoder(x, p, qBits, qMin, qMax)
N = length(x);
r = zeros(p, 1);
R = zeros(p, p);
for i = 1:p
r(i) = 1/(N - p) * (x(p+1:N)' * x(p+1-i:N-i));
for j = 1:p
R(i, j) = 1/(N - p) *(x(p+1-j:N-j)' * x(p+1-i:N-i));
end
end
a_q = kvantistis(R\r, 8, -2, 2);
y = zeros(N, 1);
yh = zeros(N, 1);
y(1:p) = x(1:p);
yh(1:p) = kvantistis(y(1:p), qBits, qMin, qMax);
yht = yh(p:-1:1);
for i = p+1:N
yt = a_q' * yht;
y(i) = x(i) - yt;
yh(i) = kvantistis(y(i), qBits, qMin, qMax);
yht = [yt + yh(i); yht(1:p-1)];
end
end