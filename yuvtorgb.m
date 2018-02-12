function rgb = yuvtorgb(rgbImage)
%(y i q)=( 0.299,0.587,0.114;0.596,-0.274,-0.322;0.211,-0.253,-0.312)*(r g b)
redChannel =double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
r=1*(redChannel)+1.13983*(blueChannel);
g=1*(redChannel)-0.39465*(greenChannel)-0.58060*(blueChannel);
b=1*(redChannel)+2.03211*(greenChannel);
rgbImage(:, :, 1)=r*255;
rgbImage(:, :, 2)=g*255;
rgbImage(:, :, 3)=b*255;
rgb=uint8(rgbImage)
end