n = input('Enter no of code bits: ');
k = input('Enter no of message bits: ');
p = input('Enter parity matrix: ');
disp('Parity matrix: ');
disp(p);
I=eye(k);
G=[I,p];
disp(G);
m=dec2bin(0:1:2^k-1);
C=m*G;
for i=1:2^k
  for j=1:n
    C(i,j)=mod(C(i,j),2);
  endfor
endfor
disp(C);
weight=sum(C');
weight(1,1)=weight(1,2);
disp(weight');
d=min(weight);
disp(d);
td=d-1;
disp(td);
tc=td/2;
disp(tc);

H=[p',eye(n-k)];
E=eye([n,n]);
h=H';
r = input('Enter recieved codeword(r):');
s=r*h;
for j=1:n-k
  s(1,j)=mod(s(1,j),2);
endfor

disp(s);

if(s==[0 0 0])
disp ('valid code word');
else
for i=1:n
if(s ==h(i,:))
error = i;
disp('error is in')
disp(i);
break;
end
end
end

disp('Error pattern(e)= ');
disp(E(error,:));
c = mod(r + E(error,:),2);
disp('error corrected code word');
disp('C = r + e');
disp(c);
  
