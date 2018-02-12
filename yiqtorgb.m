function rgb = yiqtorgb(rgbImage)
redChannel = double( rgbImage(:, :, 1));
greenChannel =  double(rgbImage(:, :, 2));
blueChannel = double( rgbImage(:, :, 3));
redChannel=redChannel/255;
greenChannel=greenChannel/255;
blueChannel=blueChannel/255;
r=1*redChannel+0.9563*greenChannel+0.6210*blueChannel;
g=1*redChannel-0.2721*greenChannel-0.6474*blueChannel;
b=1*redChannel-1.1070*greenChannel+1.7046*blueChannel;
rgbImage(:, :, 1)=r*255;
rgbImage(:, :, 2)=g*255;
rgbImage(:, :, 3)=b*255;
rgb=uint8(rgbImage)
end