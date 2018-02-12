function nrgb2 = rgbtonrgb2(rgbImage)
R =double( rgbImage(:, :, 1));
G =double(rgbImage(:, :, 2));
B = double( rgbImage(:, :, 3));
R1=double(R)/255
G1=double(G)/255
B1=double(B)/255
[n,m]=size(R)
H=zeros(n,m)
L=zeros(n,m)
S=zeros(n,m)
for i=1:n
  for j=1:m
   Cmax1=max(R1(i,j),G1(i,j));
   Cmax=max(Cmax1,B1(i,j));
   Cmin1=min(R1(i,j),G1(i,j));
   Cmin=min(Cmin1,B1(i,j));
   thelta=Cmax-Cmin;
   L(i,j)=(Cmax+Cmin)/2;
   if thelta==0
      H(i,j)=0;
   else
    if Cmax==R1(i,j)
    H(i,j)=60*mod((G1(i,j)-B1(i,j))/(thelta),6);
    elseif Cmax==G1(i,j)
    H(i,j)=60*((B1(i,j)-R1(i,j))/(thelta)+2);
    elseif Cmax==B1(i,j)
    H(i,j)=60*((G1(i,j)-B1(i,j))/(thelta)+4) ;  
    end
    end
    if thelta==0
    S(i,j)=0;
    else
    S(i,j)=thelta/(1-abs(2*L(i,j)));    
    end
    end
end 
   rgbImage(:, :, 1)=H*255/360;
   rgbImage(:, :, 2)=S*255/100;
   rgbImage(:, :, 3)=L*255/100;
   nrgb2=uint8(rgbImage)
end