% QUANTIZACAO DE IMAGENS
% Bruno Conde Costa da Silva - 201506840054
% Matheus Gonçalves Pinheiro da Silva - 201506840054

%%
img_original = imread('ubuntu.jpeg');
img_6b = round((2^6-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','6bits');
img_6b=uint8(255*(img_6b/max(img_6b(:)))); % reescala para inteiro de 8 bits sem sinal [0-255]
imagesc(img_6b); truesize;

%%
img_5b = round((2^5-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','5bits');
img_5b=uint8(255*(img_5b/max(img_5b(:))));
imagesc(img_5b); truesize;

%%
img_4b = round((2^4-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','4bits');
img_4b=uint8(255*(img_4b/max(img_4b(:)))); % reescala para inteiro de 8 bits sem sinal [0-255]
imagesc(img_4b); truesize;

%%
img_3b = round((2^3-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','3bits');
img_3b=uint8(255*(img_3b/max(img_3b(:)))); % reescala para inteiro de 8 bits sem sinal [0-255]
imagesc(img_3b); truesize;

%%
img_2b = round((2^2-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','2bits');
img_2b=uint8(255*(img_2b/max(img_2b(:)))); % reescala para inteiro de 8 bits sem sinal [0-255]
imagesc(img_2b); truesize;

%%
img_1b = round((2^1-1)/(2^8-1)*double(img_original));
figure(1);
set(1,'Name','1bit');
img_1b=uint8(255*(img_1b/max(img_1b(:)))); % reescala para inteiro de 8 bits sem sinal [0-255]
imagesc(img_1b); truesize;
