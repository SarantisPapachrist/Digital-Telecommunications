% Φόρτωση source.mat
load('source.mat');
N = length(t);
% Όρια Κβάντισης
minVal = -3.5;
maxVal = 3.5;
colors = ['-xb'; '-xg'; '-xr'; '-xy';];
% Ερώτηση 4
r = (1:15);
for p = 5:5:10
figure
plot(r, t(r), colors(1,:));
for i = 1:3
[a_q, yh, ~] = dpcm_encoder(t, p, i, minVal, maxVal);
yht = dpcm_decoder(a_q, yh);
hold on
plot(r, yht(r), colors(1+i,:));
end
title(['Signal rebuild p=', num2str(p)]);
xlabel('Samples'); ylabel('yht');
legend('x signal', 'yht N=1', 'yht N=2', 'yht N=3');
end