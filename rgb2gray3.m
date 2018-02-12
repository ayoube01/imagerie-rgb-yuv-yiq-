function grayImage = rgb2gray3(rgbImage)
try
  [rows, columns, numberOfColorChannels ]= size(rgbImage);

 redChannel = uint16( rgbImage(:, :, 1));
 greenChannel = uint16(  rgbImage(:, :, 2));
 blueChannel = uint16(rgbImage(:, :, 3));
 grayImage = 0.299*double(redChannel) + 0.587*double(greenChannel) + 0.114*double(blueChannel);
 grayImage = uint8(grayImage);
  
   
end