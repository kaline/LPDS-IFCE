/* teste de manipulação de imagem:
http://w3.mi.parisdescartes.fr/~jdelon/enseignement/tp_image/org/TP_radiometrie.html/C:\Program Files\scilab-6.0.1\tools\TP\src_scilab*/

getd('C:\Program Files\scilab-6.0.1\tools\TP\src_scilab');
imrgb = read_bmp_bg('C:\Program Files\scilab-6.0.1\tools\TP\im\parrot.bmp');
[nrow, ncol, nchan] = size(imrgb);
ccview(imrgb);
R = imrgb(:,:,1);
G = imrgb(:,:,2);
B = imrgb(:,:,3);
fview([R,G,B]);

//histograma do parrot

/*imhisto =hist(imgray(:),[0:255]);
imhisto = imhisto/sum(imhisto);
imhistocum = cumsum(imhisto);


bar(imhisto);

