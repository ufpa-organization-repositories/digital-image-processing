

function [Imagem02] = q1()
    %% questao 1     
    Imagem01 = imread('teste.png'); % Carrega a imagem.
    Red = Imagem01(:,:,1);
    Green = Imagem01(:,:,2);
    Blue = Imagem01(:,:,3);
    [x,y,z]= size(Imagem01); % Verifica as dimensões da imagem.
    Imagem02 = zeros(x,y,z);
    num = zeros(256,1); % N de pixels de intensidade k em uma imagem.
    nT = zeros(256,1);
    Fx = zeros(256,1); % Histograma.
    FxT = zeros(256,1); % Histograma transformado na intensidade.
    Fy = zeros(256,1); % Histograma Equalizado.
    NumPIm = x*y; % N pxs na imagem. MN
    NNI = 256; % N de níveis de intens. de px

    for i = 1:x
        for j = 1:y
            for m = 1:z
                Imagem02(i,j,m)=(Imagem01(i,j,1)+Imagem01(i,j,2)+Imagem01(i,j,3))/3; %Média dos valores.
            end
        end
    end
    Imagem02 = round(Imagem02); % Arredondando os valores.
    Imagem02 = uint8(Imagem02); % Conversão para valores inteiro
    Cinza = Imagem02(:,:,1);

    % Imprime VALORES:

    figure(1)
    imshow(Imagem01)
    figure(2)
    imshow(Imagem02)
end
