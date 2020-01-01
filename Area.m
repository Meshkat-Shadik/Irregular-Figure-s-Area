 function[area_result] =  Area(x1,y1,x2,y2,x3,y3)

   area_result = abs((x1*(y2-y3) + x2*(y3-y1)+ x3*(y1-y2))/2.0); 
 end