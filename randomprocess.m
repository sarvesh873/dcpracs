pkg load statistics

x=-5:0.5:5;
y=normpdf(x,0,1);
subplot(1,3,1);
plot(x,y);
axis([-5 5 0 1]) % x and y axis scale 
title('mean=0, std dev=1') 


x=-5:0.5:5;
y=normpdf(x,0,0.5);
subplot(1,3,2);
plot(x,y);
axis([-5 5 0 1]) % x and y axis scale 
title('mean=0, std dev=0.5') 

x=-5:0.5:5;
y=normpdf(x,1,1);
subplot(1,3,3);
plot(x,y);
axis([-5 5 0 1]) % x and y axis scale 
title('mean=1, std dev=1') 