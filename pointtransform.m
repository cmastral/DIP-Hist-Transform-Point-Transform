%Point Transform 
function Y = pointtransform(X, x1, y1, x2, y2)
m1=y1/x1; %klish gia ton kathe klado ths synarthshs
m2=(y2-y1)/(x2-x1);
m3=(1-y2)/(1-x2);

f=[m1*(0:1/255:x1) m2*(((x1+1/255):1/255:x2)-x1)+y1 m3*(((x2):1/255:1)-x2)+y2];

figure(3)   %plot thn synarthsh
plot(0:1/255:1,f,'r');
title('f(r)');
axis([0 1.1 0 1.1])

Y=f(floor(255*X)+1); %h metasxhmatismeni eikona Y
end

