function nrgb1 = rgbtonrgb1(rgbImage)
%(y i q)=( 0.299,0.587,0.114;0.596,-0.274,-0.322;0.211,-0.253,-0.312)*(r g b)
    R =double( rgbImage(:, :, 1));
      G =  double(rgbImage(:, :, 2));
     B = double( rgbImage(:, :, 3));
if R+G+B==0
     r=0;
     g=0;
     b=0;
 else
     r=R./(R+G+B);
     g=G./(R+G+B);
     b=B./(R+G+B);    
   rgbImage(:, :, 1)=r*255;
   rgbImage(:, :, 2)=g*255;
   rgbImage(:, :, 3)=b*255;
nrgb1=uint8(rgbImage)
end