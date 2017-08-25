Pen pen;
PGraphics pg;
PImage img;
color[] colours = new color[5];
int colour_index = 0;

void setup() 
{
//setup all the essential elements.

  size(1920,1080);
  background(0);
  pg = createGraphics(width, height);
  img = loadImage("butterfly-icon.png");
  pen = new Pen();
  
  colours[0] = color(255, 255, 255);
  colours[1] = color(255, 255, 0);
  colours[2] = color(0, 255, 0);
  colours[3] = color(0, 191, 255);
  colours[4] = color(255, 0, 0);
  
}

void draw()
{
  
  if (millis()<2000)
  {
   textSize(64);
   text("The Perspective",width/2-50,height/2);
  }
  //using an if condition to set up a time delay to start a welcome screen.
  else if (millis()>2000 && millis()<3000)
  {
  background(0);
  }
  //using one second to clean the background.
  else if (millis()>3000)
  {
  textSize(32);
  text("'The Perspective' Manual",10,30);
  text("Press or Hold '1' to draw 1point perspectives",10,60);
  text("Press or Hold '2' to draw 2point perspectives",10,90);
  text("Press or Hold '3' to draw 1point perspectives",10,120);
  text("Press 'w''y''g''b''r' to change colors",10,160);
  text("Press 'c' to clear background",10,190);
  text("Press 's' to Save image",10,220);
  text("Press 'q' to Exit",10,250);
  text("Click mouse to add butterflys",10,280);
  //Explanations of using the program.
  if (mousePressed==true) pen.draw(); 
  }
 }


void keyPressed()
{
   if(key == 'c') background(0);
   if(key == 's') saveFrame("pspt-######.png");
   if(key == 'q') exit();
   if(key == '1') onepiont();//custom function of drawing tools
   if(key == '2') twopiont();
   if(key == '3') threepiont();
   
  if (key == 'w') colour_index = 0;
  if (key == 'y') colour_index = 1;
  if (key == 'g') colour_index = 2;
  if (key == 'b') colour_index = 3;
  if (key == 'r') colour_index = 4;
}


void onepiont()
{
  stroke((colours[colour_index]));
  line(width/2,height/2, mouseX, mouseY);
}


void twopiont()
{
  stroke((colours[colour_index]));
  line(0,height/2, mouseX, mouseY);
  line(width,height/2, mouseX, mouseY);
}

void threepiont()
{
  stroke((colours[colour_index]));
  line(0,height/2, mouseX, mouseY);
  line(width,height/2, mouseX, mouseY);
  line(width/2,0, mouseX, mouseY);
  line(width/2,height, mouseX, mouseY);
}