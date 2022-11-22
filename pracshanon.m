pkg load communications

list_symb=[1 2 3 4];
prob=[0.5, 0.25,0.125,0.125];

dict = shannonfanodict(list_symb,prob);
disp(dict);

input=[1 1 1 2 2 2]
code= shannonfanoenco(input,dict);
disp(code);

decode=shannonfanodeco(code,dict);
disp(decode);

temp=dict;
for i=1:length(temp)
  temp{1,i}=length(temp{1,i});
endfor
disp(temp);

Hx=0;
for i=1:4
  Hx=Hx+(-(prob(i))*log2(prob(i)));
endfor

lx=0;
for i=1:4
  lx=lx+temp{1,i}*prob(i);
endfor

N=Hx/lx;
disp(N);