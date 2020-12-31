% QUANTIZACAO DE IMAGENS
% Bruno Conde Costa da Silva - 201506840054
% Matheus Gonçalves Pinheiro da Silva - 201506840079

img_original = imread('linux.jpeg');

for n_bits = 1:1:7
    % quantizada a imagem para n_bits por pixel
    img_nbits = round((2^n_bits-1)/(2^8-1)*double(img_original));
    % reescala a imagem quantizada para inteiro de 8 bits sem sinal [0-255]
    img_nbits=uint8(255*(img_nbits/max(img_nbits(:)))); 
    
    figure(n_bits);
    imagesc(img_nbits); truesize;
    title(n_bits);
end

imshow(img_original);
title('Original');