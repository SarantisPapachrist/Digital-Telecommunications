function capacity = capacity(p_estimate)
H_p = -p_estimate * log2(p_estimate) - (1 - p_estimate) * log2(1 - p_estimate);
capacity = 1 - H_p;
end