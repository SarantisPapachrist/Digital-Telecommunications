% Θέτουμε Χ την κωδικοποιημένη εικόνα
X = encodedImage;
% Καλούμε την έτοιμη συνάρτηση που μας έχει δοθεί
Y = binary_symmetric_channel(X);
% Υπολογισμός Παραμέτρου p
p_estimate = estimate_p(X, Y);
% Προβολή παραμέτρου p
disp(['Estimated p: ' num2str(p_estimate, '%.2f')]);
% Υπολογισμός Χωρητικότητας Καναλιού
capacity = capacity(p_estimate);
% Προβολή Χωρητικότητας Καναλιού
disp(['Channel Capacity: ' num2str(capacity, '%.2f')]);
% Αμοιβαία Πληροφοριά
I = mutualInfo(X, Y);
disp(['Mutual Information: ' num2str(I, '%.2f')]);