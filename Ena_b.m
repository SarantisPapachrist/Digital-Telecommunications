% Δημουργία dictionairy huffman
htree = huffmandict(sourceSymbols, probabilities);
% Υπολογισμός Entropy(H), Mean Code Length(L), Efficiency(E)
H = -sum(probabilities .* log2(probabilities));
L = sum(probabilities .* cellfun('length', htree(:, 2)'));
%L = mean(cellfun('length', htree(:, 2)));
E = H / L;
% Αποτελέσματα
disp(['Entropy (H): ' num2str(H)]);
disp(['Mean Code Length (L): ' num2str(L)]);
disp(['Efficiency (E): ' num2str(E)]);