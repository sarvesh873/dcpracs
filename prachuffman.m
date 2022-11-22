pkg load communications

list_symb=[1 2 3 4 5 6];  
proba=[ 0.13 0.1 0.03 0.15 0.18 0.41 ];

dict=huffmandict(list_symb,proba);
disp(dict);

input=[1 2];
disp(input);
code =huffmanenco(input,dict);
disp(code);

decode =huffmandeco(code,dict);
disp(decode);

temp=dict;
for i=1:length(temp)
    temp{1,i}=length((temp{1,i}));
end
disp('The huffman code average length:');
disp(temp)

Hx=0;
for i=1:6
  Hx=Hx+(-(proba(i)*log2(proba(i))));
end 
disp(Hx)

Lx = 0;
for i = 1:6
  Lx = Lx+temp{1,i}*proba(i);
end
disp(Lx)
 
Nn = Hx/Lx;
disp(Nn)
Efficiency=(Nn)*100;
disp("Efficiency= ");
disp(Efficiency);