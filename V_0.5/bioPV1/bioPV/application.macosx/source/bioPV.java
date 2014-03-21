import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class bioPV extends PApplet {

/*
---Bio-Photovoltaics----IAAC----MAA01----Semester_01----2013
Pablo Marcet
Ashwini Mani
Akanksha Kargwal
Apostolos Marios Mouzakopoulos

Design Development: Pablo Marcet
Proce55ing Development: Apostolos Marios Mouzakopoulos
*/


PImage plant;
PImage sun;
PImage flower;
PImage food;



int radPlant = 300;        //Radius for Plant image.
int radSun= 140;           //Generic radius for other images.
float xPlant, yPlant, xSun, ySun, xFlower, yFlower, xFood, yFood;       //Position of images.      

//Generic speed.
float xspeed = 1.1f; 
float yspeed = .9f; 

//Store direction for each image.
int xdirectionPlant = 1; 
int ydirectionPlant = 1; 
int xdirectionSun = 1; 
int ydirectionSun = 1;
int xdirectionFlower = 1; 
int ydirectionFlower = 1;
int xdirectionFood = 1; 
int ydirectionFood = 1; 


public void setup() {
  
  //Load images.
  plant = loadImage("plant.png");
  sun = loadImage("Sun.png");
  flower = loadImage("flower.png");
  food = loadImage("food.png");
  
  size(displayWidth, displayHeight);
  frameRate(30);
  
  //Set positions.
  xPlant = width/2;
  yPlant = height/2;
  xSun = width/4;
  ySun = height/4;
  xFlower = width/2;
  yFlower = height/4;
  xFood = width - (width/4)+100;
  yFood = height/2;
}

public void draw() 
{
  background(255);
  
  //Conecting lines between pictures.
  line(xPlant+150, yPlant+150, xSun+59, ySun+57);
  line(xPlant+150, yPlant+150, xFlower+59, yFlower+57);
  line(xPlant+150, yPlant+150, xFood+59, yFood+57);
  
  //Connecting lines and text.
  
  //Food
  fill(50);                                     //Fill for lines and texts.
  line(xFood+59,yFood-50,xFood+59,yFood+57);    //Food to HERBS.
  line(xFood+59,yFood+180,xFood+59,yFood+57);   //Food to LETTUCE.
  line(xFood-55,yFood+57,xFood+59,yFood+57);    //Food to TEA.
  line(xFood+180,yFood+57,xFood+59,yFood+57);    //Food to BEANS.
  text("HERBS", xFood+35, yFood-55);      //Write "HERBS", top.
  text("LETTUCE", xFood+30, yFood+195);   //Write "LETTUCE", bottom.
  text("TEA", xFood-80, yFood+62);       //Write "TEA", left.
  text("BEANS", xFood+190, yFood+62);     //Write "BEANS", right.
  
  //Flower
  line(xFlower+59, yFlower+57, xFlower+59, yFlower-55);     //Flower to CACTI.
  line(xFlower+59, yFlower+57, xFlower+59, yFlower+180);    //Flower to GRASS.
  line(xFlower+59, yFlower+57, xFlower-55, yFlower+57);     //Flower to FERNS.
  line(xFlower+59, yFlower+57, xFlower+180, yFlower+57);    //Flower to MOSS.
  text("CACTI", xFlower+35, yFlower-60);                    //Write "CACTI", top.
  text("GRASS", xFlower+40, yFlower+195);                   //Write "GRASS", bottom.
  text("FERNS", xFlower-100, yFlower+62);                   //Write "FERNS", left.
  text("MOSS", xFlower+190, yFlower+62);                    //Write "MOSS", right.
  
  //Sun
  line(xSun+59, ySun+57, xSun-60, ySun+20);
  line(xSun+59, ySun+57, xSun-55, ySun+57);
  line(xSun+59, ySun+57, xSun-60, ySun+92);
  line(xSun+59, ySun+57, xSun+187, ySun+18);
  line(xSun+59, ySun+57, xSun+187, ySun+57);
  line(xSun+59, ySun+57, xSun+187, ySun+90);
  text("SUN", xSun-90, ySun+24);
  text("CO2", xSun-90, ySun+62);
  text("H2O", xSun-90, ySun+100);
  text("NUTRIENCE", xSun+190, ySun+24);
  text("O2", xSun+190, ySun+62);
  text("CH0", xSun+190, ySun+100);
  
  
  
  //Movement
  //Plant
  fill(255);
  xPlant = xPlant + ( xspeed * xdirectionPlant );
  yPlant = yPlant + ( yspeed * ydirectionPlant );
  
  if (xPlant > width-radPlant || xPlant < 0) {
    xdirectionPlant *= -1;
  }
  if (yPlant > height-radPlant || yPlant < 0) {
    ydirectionPlant *= -1;
  }

  image(plant, xPlant, yPlant);
  
  
  //Sun
  xSun = xSun + ( xspeed * xdirectionSun );
  ySun = ySun + ( yspeed * ydirectionSun );
  
  if (xSun+59 > width-radSun || xSun < 0) {
    xdirectionSun *= -1;
  }
  if (ySun+57 > height-radSun || ySun < 0) {
    ydirectionSun *= -1;
  }

  ellipse(xSun+59, ySun+57, radSun, radSun);
  image(sun, xSun, ySun);
  
  //Flower
  xFlower = xFlower + ( xspeed * xdirectionFlower );
  yFlower = yFlower + ( yspeed * ydirectionFlower );
  
  if (xFlower > width-radSun || xFlower < 0) {
    xdirectionFlower *= -1;
  }
  if (yFlower > height-radSun || yFlower < 0) {
    ydirectionFlower *= -1;
  }

  ellipse(xFlower+59, yFlower+57, radSun, radSun);
  image(flower, xFlower, yFlower);
  
  //Food
  xFood = xFood + ( xspeed * xdirectionFood );
  yFood = yFood + ( yspeed * ydirectionFood );
  
  if (xFood > width-radSun || xFood < 0) {
    xdirectionFood *= -1;
  }
  if (yFood > height-radSun || yFood < 0) {
    ydirectionFood *= -1;
  }

  ellipse(xFood+59, yFood+57, radSun, radSun);
  image(food, xFood, yFood);
  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "bioPV" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
