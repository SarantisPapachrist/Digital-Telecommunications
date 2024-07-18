% Διάβασμα Εικόνας
grayImage = imread('parrot.png');
% Διατρέχουμε τα πίξελ της εικόνας και δημιουργούμε μητρώο
[rows, cols] = size(grayImage);
symbolPairs = zeros(rows - 1, cols - 1, 2);
for i = 1:(rows - 1)
for j = 1:(cols - 1)
symbolPairs(i, j, 1) = grayImage(i, j);
symbolPairs(i, j, 2) = grayImage(i + 1, j + 1);
end
end
% Reshape το μητρώο για εύκολη επεξεργασία
reshapedPairs = reshape(symbolPairs, [], 2);
% Μοναδικές Γραμμές
[uniquePairs, ~, idx] = unique(reshapedPairs, 'rows');
pairCounts = histcounts(idx, [unique(idx); max(idx) + 1]);
pairProbabilities = pairCounts / numel(idx);
% Display Μοναδικών Συμβόλων και των Πιθανοτήτων τους
disp('Second-Order Source Symbol Pairs and Probabilities:');
disp(table(double(uniquePairs), pairProbabilities', 'VariableNames', {'SymbolPair',
'Probability'}));