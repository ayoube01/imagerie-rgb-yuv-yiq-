function grayImage = rgb2gray1(rgbImage)
try
  [rows, columns, numberOfColorChannels ]= size(rgbImage);

 redChannel =uint16( rgbImage(:, :, 1));
 greenChannel =  uint16(rgbImage(:, :, 2));
 blueChannel = uint16( rgbImage(:, :, 3));
 grayImage = (double(redChannel) + double(greenChannel) +double(blueChannel))/3;
 grayImage = uint8(grayImage);
  
   
end