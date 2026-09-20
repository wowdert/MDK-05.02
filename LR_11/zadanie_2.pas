uses GraphABC;
begin
  setpenwidth(2);
  setpencolor(clBlack);
  
  moveto(250,500);  
  lineto(300,200);  
  lineto(350,500);  
  lineto(250,500);
  floodfill(300,250,clred);
  
  moveto(300,500);
  lineto(200,500);
  lineto(50,250);
  lineto(265,400); 
  lineto(250,500);
  floodfill(250,450, clBlue);
  
  moveto(300,500);
  lineto(400,500);
  lineto(550,250);
  lineto(335,400);
  lineto(350,500);
  floodfill(350,450,clGreen);
  
  circle(50,250,30);
  floodfill(50,250, clBlue);
  
  circle(300,200,30);
  floodfill(300,200, clRed);
  
  circle(550,250,30);
  floodfill(550,250, clGreen);
  
  end.