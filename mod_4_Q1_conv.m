%%Convolution 
t=-5:0.01:5;
x1=1;x2=-1;
x=x1.*((t>=0)&(t<=2));
h=x1.*((t>=0)&(t<=1))+x2.*((t>1)&(t<=2));
y=conv(h,x)*0.01;
t_y = linspace(2 * t(1), 2 * t(end), length(y));
subplot(3,1,1);
plot(t,x,'Linewidth',1.5);
title("X");

subplot(3,1,2);
plot(t,h,'Linewidth',1.5);
title("H");

subplot(3,1,3);
plot(t_y,y,'Linewidth',1.5);
title("Y");