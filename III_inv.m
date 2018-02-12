function I = III_inv(rgbImage)
redChannel =double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
r=redChannel+greenChannel-0.6667*blueChannel;
g=redChannel+1.3333*blueChannel;
b=1*redChannel-1*greenChannel-0.6667*blueChannel;
rgbImage(:, :, 1)=r*255;
rgbImage(:, :, 2)=g*255;
rgbImage(:, :, 3)=b*255;
I=uint8(rgbImage)
end