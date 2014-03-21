float sunX;
float sunY;
float foodX;
float foodY;
float plantX;
float plantY;
float flowerX;
float flowerY;
float movement;
float movementPlant;
float radPlant;
float radGeneric;
float xspeed;
float yspeed;


PImage sun;
PImage plant;
PImage food;
PImage flower;

void setup() {
  size(displayWidth, displayHeight);
  sun = loadImage("Sun.png");
  plant = loadImage("plant.png");
  food = loadImage("food.png");
  flower = loadImage("flower.png");
  sunX = width/4;
  sunY = height/4;
  foodX = width/4;
  foodY = height/2;
  plantX = width/2;
  plantY = height/2;
  flowerX = width/2;
  flowerY = height/4;
  movement = 1;
  movementPlant = 5;
  radPlant = 300;
  radGeneric = 140;
  xspeed = .2;
  yspeed = .5;
}


void draw() {
  background(255);
  line(plantX+150,plantY+150,sunX+59,sunY+57);
  ;
  image(sun, sunX, sunY);
  image(plant, plantX, plantY);
  ellipse(foodX+59, foodY+57, radGeneric, radGeneric);
  image(food, foodX, foodY);
  ellipse(flowerX+59, flowerY+60, radGeneric, radGeneric);
  image(flower, flowerX, flowerY);
  
  
  sunX = sunX+movement;
  sunY = sunY+movement;
  foodX = foodX+movement;
  foodY = foodY+movement;
  plantX = plantX + ( xspeed * movementPlant );
  plantY = plantY + ( yspeed * movementPlant );
  flowerX = flowerX+movement;
  flowerY = flowerY+movement;
  
  if (plantX+350 > width || plantX < 0) {
    movementPlant *= -1;
  }
  
  if (plantY+350 > height || plantY < 0) {
    movementPlant *= -1;
  }
  
}


