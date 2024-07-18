% Κωδικοποιημένη Εικόνα
encodedImage = huffmanenco(parrot(:), htree);
% Αποκωδικοποιημένη Εικόνα
decodedImage = huffmandeco(encodedImage, htree);
decodedImage = reshape(decodedImage, size(parrot));
% Δυαδική Αναπαράσταση Εικόνας
binaryImage = reshape((dec2bin(typecast(parrot(:),'uint8'), 8) - '0').', 1, []);
% Αριθμός bits της δυαδικής αναπαράστασης
binaryRepresentationBits = numel(binaryImage);
% Αριθμός bits της κωδικοοήσης Huffman
bits_huffman = numel(encodedImage);
% Λόγος Συμπίεσης
compressionRatio = bits_huffman / binaryRepresentationBits;
% Display Λόγου Συμπίεσης
disp(['J = #bits Huffman coding / #bits binary representation ) = '
num2str(compressionRatio)]);