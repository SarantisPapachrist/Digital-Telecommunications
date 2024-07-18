% Φόρτωση source.mat
load('source.mat');
N = length(t);
% Όρια Κβάντισης
minVal = -3.5;
maxVal = 3.5;
colors = ['-xb'; '-xg'; '-xm'; '-xc'];
% Ερώτηση 2
r=(1:N);
for p = 5:5:10
figure
plot(r, t(r), colors(1,:));
for i = 1:3
[~, ~, y] = dpcm_encoder(t, p, i, minVal, maxVal);
hold on
plot(r, y(r), colors(1+i,:));
end
title(['Error comparison p=', num2str(p)]);
xlabel('Samples'); ylabel('Prediction y');
legend('x signal', 'y N=1', 'y N=2', 'y N=3');
end