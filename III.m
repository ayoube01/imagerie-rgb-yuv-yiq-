function I = III(rgbImage)
redChannel =double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
r=(redChannel+greenChannel+blueChannel)/3;
g=(redChannel-blueChannel)/2;
b=(-1*redChannel+2*greenChannel-blueChannel)/4;
rgbImage(:, :, 1)=r*255;
rgbImage(:, :, 2)=g*255;
rgbImage(:, :, 3)=b*255;
I=uint8(rgbImage)
end