uses GraphABC;
begin
  setpenwidth(2);
  setpencolor(clBlack);
  
  moveTo(300, 200);
  lineTo(500, 300);
  lineTo(100, 300);
  lineTo(300, 200);
  floodfill(300, 250, clGreen);
  
  moveTo(300, 400);
  lineTo(100, 300);  
  lineTo(500, 300); 
  lineTo(300, 400); 
  floodfill(300, 350, clBlue);
  
   Circle(60,300,40);
   FloodFill(60,300,clred);
   
   Circle(540,300,40);
   FloodFill(540,300,clyellow);
   
end.