class Pen{
  int x;
  int y;
 
 //Pen() {};
 
 //Pen(int _x, int _y){
 //   x = _x;
 //   y = _y;
 //}
  
void draw(){
  
  // draw brush stroke
  if(mousePressed){
    pg.beginDraw();
    pg.image(img,mouseX-25, mouseY-25, 50,50);
    pg.endDraw();
}
  image(pg, 0, 0);
  // draw brush marker
 
}}

    