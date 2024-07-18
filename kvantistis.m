function [ y_h ] = kvantistis(y, N, min_value, max_value)
delta = abs(max_value - min_value) / 2^N;
if y > max_value
y = max_value;
elseif y < min_value
y = min_value;
end
y_h = delta * (floor(y/delta) + 0.5);
end