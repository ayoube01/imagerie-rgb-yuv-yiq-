image=imread('100.jpg')
R=image(:,:,1)
R=R(:)


G=image(:,:,2);
G=G(:);


B=image(:,:,3)
B=B(:);

[R, x] = imhist(R);
[G, x] = imhist(G);
[B, x] = imhist(B);


plot(x, R, 'Red', x, G, 'Green', x, B, 'Blue');

 
 