% Διαβάζουμε την εικόνα
parrot = imread('parrot.png');
% Προβολή της εικόνας
imshow(parrot), title('Original Grayscale Image');
% Εντοπισμός των μοναδικών συμβόλων της εικόνας
sourceSymbols = unique(parrot(:));
% Υπολογισμός Πιθανοτήτων με χρήση της histcounts function
histogram = histcounts(parrot(:), [sourceSymbols; inf]);
probabilities = histogram / numel(parrot);
% Display για κάθε pixel και της πιθανότητάς του
disp('Source Symbols and Probabilities:');
disp(table(double(sourceSymbols), probabilities', 'VariableNames', {'Symbol',
'Probability'}));