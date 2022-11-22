%clc;
%clear;
%close all;
pkg load communications

n=input("Enter the no of source elements: ");
q=input("Enter the channel matrix P(Y/X): "); %matrix P(Y|X)
p=input("Enter the source probability: ");

px=diag(p,n,n);
disp(px);

pxy=px*q;
disp(pxy);

py=p*q;
disp(py);

Hx=0;
for i=1:n
  Hx=Hx+(-(p(i))*log2(p(i)));
endfor
disp(Hx);

Hy=0;
for i=1:n
  Hy=Hy+(-(py(i))*log2(py(i)));
endfor
disp(Hy);

Hxy=0;
for i=1:n
  for j=1:n
  Hxy=Hxy+(-(pxy(i,j))*log2(pxy(i,j)));
endfor
  endfor
disp(Hxy);

h1=Hxy-Hy;
disp(h1);

h2=Hxy-Hx;
disp(h2);

Ixy=Hx-h1;
disp(Ixy);

if ((py(1)/p(1))==(py(2)/p(2)))
  disp("This channel is a Binary symmetric channel ");
 endif
if h2==0
  disp("This channel is a lossless channel ");
  end
if Ixy==0
  disp ("This channel is a useless channel ");
  end
if Hx==Hy
  if h1==0
    disp("This channel is a noiseless channel ");
    end
endif
