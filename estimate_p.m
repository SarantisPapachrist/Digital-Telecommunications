function p_estimate = estimate_p(x, y)
num_errors = sum(x ~= y);
p_estimate = num_errors / length(x);
end