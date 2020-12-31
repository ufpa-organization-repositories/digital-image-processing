%% questao 1: imagem em tons de cinza

clc;
img1 = imread('ubuntu.jpeg');

red = img1(:,:,1);
green = img1(:,:,2);
blue = img1(:,:,3);
[x,y,z]= size(img1);

img2 = zeros(x,y,z);
n_pixels = zeros(256,1);
nT = zeros(256,1);

NumPIm = x*y;

for i = 1:x
    for j = 1:y
        for m = 1:z
            
            % media entre os 3 valores
            img2(i,j,m)=(img1(i,j,1)+img1(i,j,1)+img1(i,j,1))/3;
            
        end
    end
end

img2 = round(img2);
img2 = uint8(img2);
gray = img2(:,:,1);

figure(1);
imshow(img1)
figure(2);
imshow(img2);

%% questao 2: histograma

hist = zeros(256,1);

for k = 0:1:255
    cont = 0;
    for i = 1:x
        for j = 1:y
            if gray(i,j) == k                
                cont = cont + 1;
            end
        end
    end    
    n_pixels(k+1) = cont;
end

for k = 0:255
    hist(k+1) = n_pixels(k+1)/ NumPIm ;
end

figure(3)
stem(0:1:255,hist)

%% questao 3: transformação de intensidade

hist_trans_intensidade = zeros(256,1);

k = 3;
gama = 0.3;
img2 = double(img2);
img3 = k*img2.^gama;

figure(4)
imshow(img3)
gray_transf_intens = img3(:,:,1);

for k = 0:1:255
    cont = 0;
    for i = 1:x
        for j = 1:y
            if gray_transf_intens(i,j) == k
                cont = cont + 1;
            end
        end
    end

    nT(k+1) = cont;
end

for k = 0:255
    hist_trans_intensidade(k+1) = nT(k+1)/ NumPIm ;
end

figure(5)
stem(0:1:255,hist_trans_intensidade)

%% questao 4: equalizacao de histograma

hist_equalizado = zeros(256,1);
n_niveis_intensidade_pixels = 256;

for k = 0:255
    hist_equalizado(k+1) = ( n_niveis_intensidade_pixels -1)*hist_equalizado(k+1);
end

figure(6)
stem(0:1:255,hist_equalizado)