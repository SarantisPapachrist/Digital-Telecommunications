symbolPairsCell = mat2cell(uniquePairs, ones(size(uniquePairs, 1), 1), 2);
% Δημιουργία Huffman Dctionairy για την δεύτερηςτάξης επέκταση
dictPairs = huffmandict(symbolPairsCell, pairProbabilities);
% Υπολογισμός Entropy(H), Mean Code Length(L), Efficiency(E)
HPairs = -sum(pairProbabilities .* log2(pairProbabilities));
%LPairs = mean(cellfun('length', dictPairs(:, 2)));
LPairs = sum(pairProbabilities .* cellfun('length', dictPairs(:, 2)'));
EPairs = HPairs / LPairs;
% Αποτελέσματα
disp(['Entropy (H) for second-order extension: ' num2str(HPairs)]);
disp(['Mean Code Length (L) for second-order extension: ' num2str(LPairs)]);
disp(['Efficiency (E) for second-order extension: ' num2str(EPairs)]);