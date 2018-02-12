function yiq = rgbtoyiq(rgbImage)
%(y i q)=( 0.299,0.587,0.114;0.596,-0.274,-0.322;0.211,-0.253,-0.312)*(r g b)
redChannel =double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
y=0.299*redChannel+0.587*greenChannel+0.114*blueChannel;
i=0.595716*redChannel-0.274453*greenChannel-0.321263*blueChannel;
q=0.211456*redChannel-0.522591*greenChannel+0.311135*blueChannel;
rgbImage(:, :, 1)=y*255;
rgbImage(:, :, 2)=i*255;
rgbImage(:, :, 3)=q*255;
yiq=uint8(rgbImage)
end