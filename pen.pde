class Pen{
  int x;
  int y;
 
 //Pen() {};
 
 //Pen(int _x, int _y){
 //   x = _x;
 //   y = _y;
 //}
  
  void draw(){
  background(192);
  // draw brush stroke
  if(mousePressed){
    pg.beginDraw();
    pg.stroke(0);
    pg.strokeWeight(2);
    pg.line(pmouseX, pmouseY, mouseX, mouseY);
    pg.endDraw();
  }
  image(pg, 0, 0);
  // draw brush marker
  


  //if(key == '1')  ellipse(mouseX,mouseY,10,10);
  //if(key == '2')  ellipse(mouseX,mouseY,20,20);
  //if(key == '3')  ellipse(mouseX,mouseY,30,30);
  //if(key == 'w')  fill(255);
  //if(key == 'b')  fill(0);
  //if(key == 'g')  fill(125);
  }
  

    
}