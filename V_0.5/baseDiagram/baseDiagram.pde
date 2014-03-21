PImage food;


int radSun= 140;        
float xFood, yFood;       

float xspeed = .9; 
float yspeed = .8; 

int xdirectionFood = 1; 
int ydirectionFood = 1; 


void setup() 
{
  food = loadImage("food.png");
  size(displayWidth, displayHeight);
  frameRate(30);
  textSize(32);
  xFood = width/2;
  yFood = height/4;
}

void draw() 
{
  background(255);
  fill(50);                                     //Fill for lines and texts.
  line(xFood+59,yFood-50,xFood+59,yFood+57);    //Food to Herbs.
  line(xFood+59,yFood+180,xFood+59,yFood+57);   //Food to Lettuce.
  line(xFood-55,yFood+57,xFood+59,yFood+57);    //Food to Tea.
  line(xFood+180,yFood+57,xFood+59,yFood+57);    //Food to Beans.
  text("Herbs", xFood+18, yFood-50);      //Write "Herbs".
  text("Lettuce", xFood+10, yFood+207);   //Write "Lettuce". 
  text("Tea", xFood-120, yFood+67);       //Write "Tea".
  text("Beans", xFood+180, yFood+67);     //Write "Beans".
  
  xFood = xFood + ( xspeed * xdirectionFood );
  yFood = yFood + ( yspeed * ydirectionFood );
  
  if (xFood > width-radSun || xFood < 0) {
    xdirectionFood *= -1;
  }
  if (yFood > height-radSun || yFood < 0) {
    ydirectionFood *= -1;
  }
  
  fill(255);
  ellipse(xFood+59, yFood+57, radSun, radSun);
  image(food, xFood, yFood);
}
