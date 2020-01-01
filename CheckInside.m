function[isInside] = CheckInside(x1, y1,x2,y2,x3,y3,x,y)    
    A = Area (x1, y1, x2, y2, x3, y3);  
    A1 = Area (x, y, x2, y2, x3, y3);  
    A2 = Area (x1, y1, x, y, x3, y3); 
    A3 = Area (x1, y1, x2, y2, x, y); 
   if(abs(A - (A1 + A2 + A3))<= 0.001)
       isInside = 1; 
   else
       isInside = 0;
   end    
end