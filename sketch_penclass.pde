Pen pen;
PGraphics pg;


void setup() {

  size(1920,1080);
  background(135);
  pg = createGraphics(width, height);
  textSize(64);
  text("word", 10, 30);
  
  
  pen = new Pen();

}

void draw(){
  
  stroke(126);
    
  line(0,height/2, mouseX, mouseY);
  line(width,height/2, mouseX, mouseY);

  if (mousePressed==true) pen.draw();
  
}

void keyPressed(){
   if(key == 'r') background(135);
   if(key == 's') saveFrame();
   if(key == 'q') exit();
   
}

void mouseReleased(){
  line(mouseX,0,mouseX,height);
}