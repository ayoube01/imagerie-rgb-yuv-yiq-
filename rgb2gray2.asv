function grayImage = rgb2gray2(rgbImage)
try
  [rows, columns, numberOfColorChannels ]= size(rgbImage);

 redChannel = uint16( rgbImage(:, :, 1));
 greenChannel = uint16(rgbImage(:, :, 2));
 blueChannel = uint16(rgbImage(:, :, 3));
 grayImage = 0.2125*double(redChannel) + 0.7159*double(greenChannel) + 0.0721*double(blueChannel);
 grayImage = uint8(grayImage);
end