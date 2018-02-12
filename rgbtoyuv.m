function yuv = rgbtoyuv(rgbImage)
%(y i q)=( 0.299,0.587,0.114;0.596,-0.274,-0.322;0.211,-0.253,-0.312)*(r g b)
redChannel =double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
y=0.299*redChannel+0.587*greenChannel+0.114*blueChannel;
u=-0.14713*redChannel-0.28886*greenChannel+0.436*blueChannel;
v=0.615*redChannel-0.51498*greenChannel-0.10001*blueChannel;
rgbImage(:, :, 1)=y*255;
rgbImage(:, :, 2)=u*255;
rgbImage(:, :, 3)=v*255;
yuv=uint8(rgbImage)
end