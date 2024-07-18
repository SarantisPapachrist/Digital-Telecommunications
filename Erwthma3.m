% Φόρτωση source.mat
load('source.mat');
N = length(t);
% Όρια Κβάντισης
minVal = -3.5;
maxVal = 3.5;
colors = ['-xb'; '-xg'; '-xm'; '-xk'; '-xc'; '-xr'];
% Ερώτηση 3
r=(1:3);
m = zeros(3, 1);
figure
for p = 5:10
for i = 1:3
[a_q, ~, y] = dpcm_encoder(t, p, i, minVal, maxVal);
m(i) = mean(y.^2);
end
hold on
plot(r, m(r), colors(p-4,:));
disp(['p: ',num2str(p),', aq: ', num2str(a_q')])
endtitle('Mean squared');
xlabel('N'); ylabel('E(y^2)');
legend('m p=5', 'm p=6', 'm p=7', 'm p=8', 'm p=9', 'm p=10');