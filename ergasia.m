clear;
close all;
pkg load image;

##diabasma eikonas lena.jpg
U = imread('lena512.jpg');

##eikona double me matgray
U = mat2gray(double(U));


##oria filtrou???
U = U - min(U(:));
U = U / max(U(:));

##dimiourgia filtrou
filtro = fspecial("average");

#50 stigmiotipa
for x  = 1:1:50
  rel = var(U(:)) / sqrt(10);
  ##add noise sthn eikona moy
                  #eikona, katanomi(kanoniki edw), mean(0),variance
  noiseU = imnoise(U, 'gaussian', 0, rel);  
  
  mynewimage = filter2(filtro,(noiseU/x));
  
  ##meso tetragwniko sfalma
  sqe =  immse(U,mynewimage);
endfor
figure;imshow(U,[]);



#diagramma
ex = [1:50];
figure;plot(ex,sqe);


#emfanisi me thorivo, apothoriv
figure;imshow(noiseU,[]);
figure;imshow(mynewimage,[]);


 