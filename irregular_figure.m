clc;
close all;
insidepoint = 0;
x1 = 0, y1 = 0;
x2 = rand(1), y2 = rand(1);
x3 = rand(1), y3 = rand(1);

max_dot = input('How many times do you want to put dot : ');

%0, 0, 20, 0, 10, 30, 10, 15

x = [ x1 x2 x3 0];
y = [ y1 y2 y3 0];
plot(x,y);
hold on;

x = [ 0 0 1 1 0];
y = [ 0 1 1 0 0];
plot(x,y);
hold on;

xlim([0 2])
ylim([0 2])
%hold on;

for i = 1:max_dot

    a = rand(1);
    b = rand(1);


 isInside =  CheckInside(x1,y1,x2,y2,x3,y3,a,b);
disp(isInside);

if(isInside == 1)
   insidepoint = insidepoint + 1;
   plot(a,b,'g.');
else
   plot(a,b,'r.'); 
end
pause(0.01);

hold on;


end
anss = 1;

disp("total points inside the area(M) = "+insidepoint);
disp("total points plotted(N) = "+max_dot);
disp("Area of known figure(A) = "+anss+" m^2");
disp("Area of unknown figure (F = (M/N)*A) = "+(insidepoint/max_dot)*anss);

