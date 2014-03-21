import lmu.*;

/*
---Bio-Photovoltaics----IAAC----MAA01----Semester_01----2013
Pablo Marcet
Ashwini Mani
Akanksha Kargwal
Apostolos Marios Mouzakopoulos

Design Development: Pablo Marcet
Proce55ing Development: Apostolos Marios Mouzakopoulos
*/





/*
import controlP5.*;
ControlP5 cp5;
*/



//Images Top.
PImage FoodAndFlower;
PImage Grid;
PImage Triangle;
PImage Poles;

//Images Center.
PImage Plant;
PImage Bacteria;
PImage Soil;
PImage Battery;

//Images Bottom.
PImage Photosynthesis;
PImage NH;
PImage MFC;
PImage Plug;


float xPlant, xBacteria, xSoil, xBattery, yCentral, yBottom, yTop, Input, DIAGRAM, OUTPUT;


void setup () {
  
  
  //set images
  FoodAndFlower= loadImage("food_and_flower.png");
  Grid = loadImage("grid.png");
  Triangle = loadImage("triangle.png");
  Poles = loadImage("poles.png");
  
  Plant = loadImage("plant.png");
  Bacteria = loadImage("bacteria.png");
  Soil = loadImage("soil.png");
  Battery = loadImage("battery.png");
  
  Photosynthesis = loadImage("photosynthesis.png");
  NH = loadImage("NH.png");
  MFC = loadImage("mfc.png");
  Plug = loadImage("plug.png");
  
  Input = 255;
  OUTPUT = 255;
  DIAGRAM = 255;
  /*
  //Button
  cp5 = new ControlP5(this);
  
  cp5.addSlider("DIAGRAM")
    .setPosition(0,748)
    .setRange(0,255)
    .setSize(1280/3,20)
    ;
    
    cp5.addSlider("PARAMETERS")
    .setPosition(1280/3,748)
    .setRange(0,255)
    .setSize(1280/3,20)
    ;
    
    cp5.addSlider("OUTPUT")
    .setPosition((1280/3)+(1280/3),748)
    .setRange(0,255)
    .setSize(1280/3,20)
    ;
  
  */
  
  size(1280,768);
  frameRate(20);
  
  
  xPlant = 30;
  xBacteria = 370;
  xSoil = 710;
  xBattery = 1050;
  yCentral = 284;
  yBottom = 534;
  yTop = 134;
}

void draw () {
  background(255);
  
  
  image(FoodAndFlower, xPlant-15, yTop-100);    //image flower
  image(Grid, xBacteria+65, yTop-20);           //image grid
  image(Triangle, xSoil+65, yTop-20);           //image triangle
  image(Poles, xBattery+65, yTop-20);           //image poles
  
  
  
  stroke(0);
  //Top Main Lines.
  line(xPlant+100, yCentral+100, xPlant+100, yTop+48);        //plant to food.
  line(xPlant+100, yCentral+100, xPlant+170, yTop+48);         //plant to flower.
  line(xBacteria+100, yCentral+10, xBacteria+100, yTop+48);   //bacteria to grid.
  line(xSoil+100, yCentral+10, xSoil+100, yTop+48);           //soil to triangle.
  line(xBattery+100, yCentral+10, xBattery+100, yTop+48);     //battery to poles.
  //Top Text Lines.    
  //Plant.  
  //line(xPlant+80, yTop+50, xPlant+20, yTop-50);       //text food.
  //line(xPlant+80, yTop+50, xPlant+20, yTop);         //text food.
  //line(xPlant+80, yTop+50, xPlant+3, yTop+50);         //text food.
  //line(xPlant+80, yTop+50, xPlant+3, yTop+100);         //text food.
  ///////////////////////////////////////////////////////////////////////////
  //line(xPlant+102, yTop-106, xPlant+115, yTop-106);   //text flower.
  //line(xPlant+102, yTop-76, xPlant+115, yTop-76);     //text flower.
  //line(xPlant+102, yTop-46, xPlant+115, yTop-46);     //text flower.
  //line(xPlant+102, yTop-16, xPlant+115, yTop-16);     //text flower.
  
  /*Bacteria
  line(xBacteria+53, yTop+53, xBacteria+53, yTop-150);   //text grid
  line(xBacteria+53, yTop-75, xBacteria+59, yTop-75);    //text grid
  line(xBacteria+53, yTop-45, xBacteria+59, yTop-45);    //text grid
  line(xBacteria+53, yTop-15, xBacteria+59, yTop-15);    //text grid
  
  //Soil.
  line(xSoil+53, yTop+53, xSoil+53, yTop-150);          //text triangle
  line(xSoil+53, yTop-75, xSoil+59, yTop-75);           //text triangle
  line(xSoil+53, yTop-45, xSoil+59, yTop-45);           //text triangle
  line(xSoil+53, yTop-15, xSoil+59, yTop-15);           //text triangle
  
  //Battery.
  line(xBattery+53, yTop+53, xBattery+53, yTop-150);     //text poles
  line(xBattery+53, yTop-75, xBattery+59, yTop-75);      //text poles
  line(xBattery+53, yTop-45, xBattery+59, yTop-45);      //text poles
  line(xBattery+53, yTop-15, xBattery+59, yTop-15);      //text poles */
  
  //Bottom Main Lines.
  line(xPlant+100, yCentral+10, xPlant+100, yBottom);          //Bottom plant line.
  line(xBacteria+100, yCentral+10, xBacteria+100, yBottom);    //Bottom bacteria line.
  line(xSoil+100, yCentral+10, xSoil+100, yBottom);            //Bottom soil line.
  line(xBattery+100, yCentral+10, xBattery+100, yBottom);      //Bottom battery line.
  //Bottom Text Lines.
  //Plant.
  line(xPlant+100, yBottom+50, xPlant+35, yBottom);             //text photosynthesis
  line(xPlant+100, yBottom+50, xPlant+35, yBottom+43);          //text photosynthesis
  line(xPlant+100, yBottom+50, xPlant+35, yBottom+93);          //text photosynthesis
  line(xPlant+100, yBottom+50, xPlant+235, yBottom);            //text photosynthesis
  line(xPlant+100, yBottom+50, xPlant+170, yBottom+43);         //text photosynthesis
  line(xPlant+100, yBottom+50, xPlant+170, yBottom+93);         //text photosynthesis
  //Bacteria.
  line(xBacteria+100, yBottom+50, xBacteria-20, yBottom);        //text NH
  line(xBacteria+100, yBottom+50, xBacteria+35, yBottom+43);     //text NH
  line(xBacteria+100, yBottom+50, xBacteria+35, yBottom+93);     //text NH
  line(xBacteria+100, yBottom+50, xBacteria+235, yBottom);       //text NH
  line(xBacteria+100, yBottom+50, xBacteria+167, yBottom+43);    //text NH
  line(xBacteria+100, yBottom+50, xBacteria+167, yBottom+93);    //text NH
  //Soil.
  line(xSoil+100, yBottom+50, xSoil-15, yBottom);                //text MFC
  line(xSoil+100, yBottom+50, xSoil+35, yBottom+43);             //text MFC
  line(xSoil+100, yBottom+50, xSoil+35, yBottom+93);             //text MFC
  line(xSoil+100, yBottom+50, xSoil+235, yBottom);               //text MFC
  line(xSoil+100, yBottom+50, xSoil+167, yBottom+43);            //text MFC
  line(xSoil+100, yBottom+50, xSoil+167, yBottom+93);            //text MFC
  //Battery.
  line(xBattery+100, yBottom+50, xBattery-30, yBottom);           //text plug
  line(xBattery+100, yBottom+50, xBattery+100,yBottom+135);       //text plug
  line(xBattery+100, yBottom+155, xBattery+100,yBottom+185);      //text plug
  
  
  
  image(Photosynthesis, xPlant+50, yBottom);        //image photosynthesis
  image(NH, xBacteria+50, yBottom);                 //image NH
  image(MFC, xSoil+50, yBottom);                    //image MFC
  image(Plug, xBattery+50, yBottom);                //image plug
  
    //Text.
  textSize(15);      //Set text size.
  fill(0);
  //Plant.
  //Bottom.
  text("SUN", xPlant, yBottom);              //Plant bottom "SUN".
  text("H2O", xPlant, yBottom+50);           //Plant bottom "H2O".
  text("CO2", xPlant, yBottom+100);          //Plant bottom "CO2".
  text("NUTRIENTS", xPlant+240, yBottom);    //Plant bottom "NUTRIENCE".
  text("O2", xPlant+170, yBottom+50);        //Plant bottom "O2".
  text("CH0", xPlant+170, yBottom+100);      //Plant bottom "CH0".
  //Top.
  textSize(13);
  fill(0);
  //text("HERBS", xPlant-20, yTop-50);           //Plant food bottom "HERBS".
  //text("LETTUCE", xPlant-20, yTop);          //Plant food bottom "LETTUCE".
  //text("TEA", xPlant-20, yTop+50);              //Plant food bottom "TEA".
  //text("BEANS", xPlant-20, yTop+100);            //Plant food bottom "BEANS".
  /////////////////////////////////////////////////////////////////////////////////
  //text("CACTI", xPlant+115, yTop-100);         //Plant flower bottom "CACTI".
  //text("GRASS", xPlant+115, yTop-70);          //Plant flower bottom "GRASS".
  //text("FERNS", xPlant+115, yTop-40);          //Plant flower bottom "FERNS".
  //text("MOSS", xPlant+115, yTop-10);           //Plant flower bottom "MOSS".
  
  //Bacteria.
  //Bottom.
  textSize(15);
  fill(0);
  text("CO2", xBacteria, yBottom+50);          //Bacteria bottom "CO2".
  text("N", xBacteria+10, yBottom+100);        //Bacteria bottom "N".
  text("ELECTRONS", xBacteria+240, yBottom);   //Bacteria bottom "ELECTRONS".
  text("H-", xBacteria+170, yBottom+50);       //Bacteria bottom "H-".
  text("H+", xBacteria+170, yBottom+100);      //Bacteria bottom "H+".
  //Top.
  textSize(13);
  fill(0);
  //text("PH", xBacteria+63, yTop-70);           //Bacteria top "PH".   
  //text("O2", xBacteria+63, yTop-40);           //Bacteria top "O2".
  //text("H2O", xBacteria+63, yTop-10);          //Bacteria top "H2O".
  
  //Soil.
  //Bottom.
  textSize(15);
  fill(0);
  text("H2O", xSoil, yBottom+50);              //Soil bottom "H2O".
  text("H-", xSoil+10, yBottom+100);           //Soil bottom "H-".
  text("CURRENT", xSoil+240, yBottom);         //Soil bottom "CURRENT".
  text("VOLTS", xSoil+170, yBottom+50);        //Soil bottom "VOLTS".
  text("AMPS", xSoil+170, yBottom+100);        //Soil bottom "AMPS".
  //Top.
  textSize(13);
  fill(0);
  //text("CLAY", xSoil+63, yTop-70);              //Soil top "CLAY".
  //text("LOAM", xSoil+63, yTop-40);              //Soil top "LOAM".
  //text("PEAT", xSoil+63, yTop-10);              //Soil top "PEAT".
      
  //Battery.
  //Bottom.
  textSize(15);
  fill(0);
  text("STEP-DOWN CONVERTER", xBattery, yBottom+150);      //Battery bottom "STEP-DOWN CONVERTER".
  text("APPLIANCE", xBattery+50, yBottom+200);             //Battery bottom "APPLIANCE".
  //Top.
  textSize(13);
  fill(0);
  //text("+COPPER", xBattery+63, yTop-70);                  //Battery top "+COPPER".
  //text("-ZINC", xBattery+63, yTop-40);                    //Battery top "-ZINC".
  //text("H20", xBattery+63, yTop-10);                      //Battery top "H2O".
  
  fill(255,255,255,Input);
  noStroke();
  rect(-100,0,2000,height/2);
  
  fill(255,255,255,OUTPUT);
  noStroke();
  rect(0, 768, 2000, -height/2);
  
  //Draw Central Images.
  image(Plant, xPlant, yCentral);
  image(Bacteria, xBacteria, yCentral);
  image(Soil, xSoil, yCentral);
  image(Battery, xBattery, yCentral);
  
  
  //fill(255,255,255,DIAGRAM);
  //stroke(255);
  //rect(-100,-100,20000,1000);
  
  
  
  
}
/*
//Conditions.
  if (30<mouseX || mouseX<180 || mouseY<yCentral+150 || mouseX<xBacteria+150 || xBacteria<mouseX || xSoil<mouseX || mouseX<xSoil+150 || xBattery<mouseX || mouseX<xBattery+150 && yCentral<mouseY || mouseY<yCentral+150){
    Input=Input-50;
  }else{
    Input=255
}


void mouseWheel(MouseEvent event) {
  //Input = event.getAmount();
  float e = event.getAmount();
  println(e);
  
}


if(mouseY<yCentral+150){
  Input--;
}

if(yCentral+150<mouseY){
  OUTPUT--;
}

*/

void mouseDragged() {
  Input = Input + 5;
  if (Input > 255) {
    Input = 255;
  }
}
