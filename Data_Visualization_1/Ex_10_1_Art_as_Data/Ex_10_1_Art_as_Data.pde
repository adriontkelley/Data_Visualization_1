///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu

////This sketch requires the ezGestures, minim and sound Processing libraries


///////// This sketch only runs in Processing 2 //////////////





import processing.sound.*;
import net.silentlycrashing.gestures.*;


import net.silentlycrashing.gestures.preset.*;//TheBlob library.

SoundFile sample1;
SoundFile sample2;


Amplitude rms1;
Amplitude rms2;


GestureAnalyzer brain;//TheBlob
ConcurrentGestureListener cwTwirlEar;
ConcurrentGestureListener ccwTwirlEar;
ConcurrentGestureListener hShakeEar;


Table T0name;
Table T1mpg;
Table T2cyl;
Table T3dis;
Table T4hsp;
Table T5wgt;
Table T6acel;
Table T7year;
Table T8orgn;


int index = 0;

float scale1=15;
float smooth_factor1=0.25;
float sum1;



float scale2=15;
float smooth_factor2=0.25;
float sum2;



int NUM_PTS = 30;//TheBlob

float DEFAULT_ROTATION = 0.001;
float ROTATION_INC = 0.001;
float rotation = 0;
float currRotation;
int rotationState;

float MIN_SCALE = 0.2;
float SCALE_INC = 0.002;
float currScale;
boolean scaleUp = false;

void setup() {
  size(1900, 950);
  
  
   //As written Xylephone 2 is is played before Xylephone 1. Change order of code and
   //Xylephone 1 plays first. Also Xylephone 1 and 2 are both fed into rms1.analyze, maybe?
   //Sample2 is visualized by rect, but Xylephone2 is not. Xylephone1 should be visualized
   //because there is code written for it later. No code for Xylephone 2 is written later.
  sample1 = new SoundFile(this, "1.aif");//Xylephone 1.
  sample1.loop();
  
  rms1 = new Amplitude(this);
    rms1.input(sample1);
    
    sample2 = new SoundFile(this, "2.aif");//Xylephone 2.
    sample2.loop();
  
  rms2 = new Amplitude(this);
  rms2.input(sample2);
  
    
    
    currScale = MIN_SCALE;
  currRotation = DEFAULT_ROTATION;
    
    
    //Adding more than 2 lower tone Xylephones creates an easy to detect
    //audible pattern that becomes annoying, especialy with higher tones.
    //The 2 lower tones provide a "soothing" randomness. Adding a third
    //tone higher than the first two lower tones creates a "mechanical"
    //acoustic repetition that quickly turns into an annoying "ping".
  T0name = loadTable("cars.tsv");
  T1mpg = loadTable("cars.tsv");
  T2cyl = loadTable("cars.tsv");
  T3dis = loadTable("cars.tsv");
  T4hsp = loadTable("cars.tsv");
  T5wgt = loadTable("cars.tsv");
  T6acel = loadTable("cars.tsv");
  T7year = loadTable("cars.tsv");
  T8orgn = loadTable("cars.tsv");
  
  brain = new MouseGestureAnalyzer(this);
  cwTwirlEar = new ConcurrentCWTwirlListener(this, brain);
  cwTwirlEar.registerOnAction("setRotationRight", this);
  cwTwirlEar.registerOffAction("setRotationDefault", this);
  ccwTwirlEar = new ConcurrentCCWTwirlListener(this, brain);
  ccwTwirlEar.registerOnAction("setRotationLeft", this);
  ccwTwirlEar.registerOffAction("setRotationDefault", this);
  hShakeEar = new ConcurrentHShakeListener(this, brain);
  hShakeEar.registerOnAction("toggleScaleUp", this);
  hShakeEar.registerOffAction("toggleScaleUp", this);
  
  noSmooth();
  //frameRate(mouseX); //Produces grey screen.
  //frameRate(12); //Plays fine.
}

void draw() {
  background(255);
  //delay(mouseX);
  //frameRate(mouseX); //Never plays past colum 0.
  frameRate(15);
  
  rotation += currRotation;
  
 
 
 
  
  //Do I need a } ?
  
  
  sum1 += (rms1.analyze() - sum1) * smooth_factor1;// Point of Xylephone 1 and 2 mixing?
    float rms1_scaled=sum1*(height/3)*scale1;
    
    if (index < T0name.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    
    if (index < T1mpg.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T2cyl.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T3dis.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T4hsp.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
   if (index < T5wgt.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T6acel.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T7year.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    if (index < T8orgn.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 405) { 
      index = 0;
    
    }
    
    
    
      
      
    //Make different variations of getInt. 
    //Example: delay getInt = mpg2 or add different indeces together.
     
    String name1 = T0name.getString(index, 0);//Name
    int mpg1 = T1mpg.getInt(index, 1);//Mpg.
    int cyl1 = T2cyl.getInt(index, 2);//Cylinders.
    int dis1 = T3dis.getInt(index, 3);//Displacement.
    int hsp1 = T4hsp.getInt(index, 4);//Horsepower.
    int wgt1 = T5wgt.getInt(index, 5);//Weight.
    int acel1 = T6acel.getInt(index, 6);//Acceleration.
    int year1 = T7year.getInt(index, 7);//Year.
    int orgn1 = T8orgn.getInt(index, 8);//Origin.
    

    
    
    //This is the question that led to discovery of loop from Ex_14:
    //"T1.getInt(index, 5) is retreived every x fps.
    //Then iterated at 60 fps.
   //How do I control frequency of iterations?" 
   
   float X1m = map(rms1_scaled, 0, 320, 0, 255);//Xylephone 1 mapped.
   float mpg1m = map(mpg1, 0,  48, 0 , 200);//Mpg mapped.
   float cyl1m = map(cyl1, 0,  8, 0 , 200);//Cyliders mapped.
   float dis1m = map(dis1, 0,  455, 0 , 200);//Displacement mapped.
   float hsp1m = map(hsp1, 0,  255, 0 , 200);//Horsepower mapped.
   float wgt1m = map(wgt1, 0,  5000, 0 , 200);//Weight mapped.
   float acel1m = map(acel1, 0,  23, 0 , 200);//Acceleration mapped.
   float year1m = map(year1, 0,  82, 0 , 200);//Year mapped.
   float orgn1m = map(orgn1, 0,  3, 0 , 200);//Origin mapped.
   
    
    
    
    
    
    
    //Augmentations to ellipse.
    //fill(color(a5m));//Weight mapped.
    //ellipse(120, 360, rms1_scaled, a5m);//Xylephone 1.
    //fill(color(rms1_scaled, X1m, a5m));//Xyle
    //ellipse(120, 360, X1m, a5m);//Xylephone mapped + Weight mapped.
    //fill(color(random(rms1_scaled), random(rms1_scaled), random(rms1_scaled), 50));//Xylephone 1.
    //ellipse(120, 360, rms1_scaled, rms1_scaled); //Xylephone 1.
    
    //Use index with largest numbers as template to design space between grids.
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(150, 125, X1m, X1m);//Xylephone 1 mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(590, 210, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(mpg1m), 50));//Mpg mapped.
    ellipse(590, 210, mpg1m, mpg1m);//Mpg mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(965, 210, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(cyl1m), 50));//Cylinders mapped.
    ellipse(965, 210, cyl1m, cyl1m);//Cylinders mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(1335, 210, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(dis1m), 50));//Displacement mapped.
    ellipse(1335, 210, dis1m, dis1m);//Displacement mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(1710, 210, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(hsp1m), 50));//Horsepower mapped.
    ellipse(1710, 210, hsp1m, hsp1m);//Horsepower mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(590, 550, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(wgt1m), 50));//Weight mapped.
    ellipse(590, 550, wgt1m, wgt1m);//Weight mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(965, 550, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(acel1m), 50));//Acceleration mapped.
    ellipse(965, 550, acel1m, acel1m);//Acceleration mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(1335, 550, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(year1m), 50));//Year mapped.
    ellipse(1335, 550, year1m, year1m);//Year mapped.
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone 1 mapped.
    rect(1710, 550, X1m, X1m);//Xylephone 1 mapped.
    stroke(0);
    strokeWeight(1);
    fill(color(random(orgn1m), 50));//Origin mapped.
    ellipse(1710, 550, orgn1m, orgn1m);//Origin mapped.
    
    stroke(0);
    strokeWeight(1);
    fill(color(random(year1m), 50));
    ellipse(950, 825, 50, 50);//Car Data Scale 50
    stroke(0);
    strokeWeight(1);
    fill(color(random(year1m), 50));
    ellipse(1225, 825, 200, 200);//Car Data Scale 200
    
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone Data Scale 50
    rect(1500, 825, 50, 50);
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    fill(random(X1m), 50);//Xylephone Data Scale 200
    rect(1775, 825, 200, 200);
    
    
    
   
    
    
    
    //delay(1000);//Control delay a second time.
    
    index++;
    
    
    //Use index with largest numbers as template to design space between grids.
    textSize(18);
    fill(0);
    text("Xylephone 1 mapped", 150, 125);
    fill(0);
    text(X1m, 320, 210);
    
    
    fill(0);
    text("Xylephone 1 mapped", 420, 60);
    fill(0);
    text("Mpg", 420, 20);
    fill(0);
    text("Mpg mapped", 420, 40);
    fill(0);
    text(X1m, 690, 60);
    fill(0);
    text(mpg1, 695, 20);
    fill(0);
    text(mpg1m, 690, 40);
    
    
    fill(0);
    text("Xylephone 1 mapped", 790, 60);
    fill(0);
    text("Cylinders", 790, 20);
    fill(0);
    text("Cylinders mapped", 790, 40);
    text(X1m, 1060, 60);
    fill(0);
    text(cyl1, 1065, 20);
    fill(0);
    text(cyl1m, 1060, 40);
    
    fill(0);
    text("Xylephone 1 mapped", 1160, 60);
    fill(0);
    text("Displacement", 1160, 20);
    fill(0);
    text("Displacement mapped", 1160, 40);
    text(X1m, 1440, 60);
    fill(0);
    text(dis1, 1445, 20);
    fill(0);
    text(dis1m, 1440, 40);
    
    fill(0);
    text("Xylephone 1 mapped", 1540, 60);
    fill(0);
    text("Horsepower", 1540, 20);
    fill(0);
    text("Horsepower mapped", 1540, 40);
    fill(0);
    text(X1m, 1800, 60);
    fill(0);
    text(hsp1, 1805, 20);
    fill(0);
    text(hsp1m, 1800, 40);
    
    
    fill(0);
    text("Xylephone 1 mapped", 420, 400);
    fill(0);
    text("Wieght", 420, 360);
    fill(0);
    text("Wieght mapped", 420, 380);
    fill(0);
    text(X1m, 690, 400);
    fill(0);
    text(wgt1, 695, 360);
    fill(0);
    text(wgt1m, 690, 380);
    
    
    fill(0);
    text("Xylephone 1 mapped", 790, 400);
    fill(0);
    text("Acceleration", 790, 360);
    fill(0);
    text("Acceleration mapped", 790, 380);
    fill(0);
    text(X1m, 1060, 400);
    fill(0);
    text(acel1, 1065, 360);
    fill(0);
    text(acel1m, 1060, 380);
    
    fill(0);
    text("Xylephone 1 mapped", 1160, 400);
    fill(0);
    text("Year", 1160, 360);
    fill(0);
    text("Year mapped", 1160, 380);
    fill(0);
    text(X1m, 1440, 400);
    fill(0);
    text(year1, 1445, 360);
    fill(0);
    text(year1m, 1440, 380);
    
    fill(0);
    text("Xylephone 1 mapped", 1540, 400);
    fill(0);
    text("Origin", 1540, 360);
    fill(0);
    text("Origin mapped", 1540, 380);
    fill(0);
    text(X1m, 1800, 400);
    fill(0);
    text(orgn1, 1805, 360);
    fill(0);
    text(orgn1m, 1800, 380);
    
    
    text("Car Name", 450, 750);
    fill(0);
    text(name1, 590, 835);
    
    text("Car Data Size", 950, 750);
    fill(0);
    textSize(24);
    text(50, 936, 835);
    text(200, 1205, 835);
    
    textSize(18);
    text("Xylephone 1 Size", 1500, 750);
    fill(0);
    textSize(24);
    text(50, 1486, 835);
    text(200, 1756, 835);
    
    noStroke();
    rectMode(CENTER);
    fill(0);
    rect(210, 590, 375, 675);
    
    // draw the blob
  pushMatrix();
  smooth();
  stroke(0, wgt1m + 55, 255, wgt1m);
  strokeWeight(acel1m/2);
  fill(100, cyl1m * 2, 0, 255);
    translate(210 + mpg1/5, 590 + cyl1/2);
    rotate(rotation + year1/2);
    translate(-width/2, -height/2);
  
    beginShape();
    for(int i=0; i < NUM_PTS+3; i++) {
      curveVertex(getX(i%NUM_PTS), getY(i%NUM_PTS));
    }
    endShape();
  popMatrix();
  
  // set the transformation values for the next frame
  if (scaleUp) incScale();
  else resetScale();
  
  if (rotationState == 0) resetRotation();
  else if (rotationState == 1) incRotation();
  else decRotation();
    
    
    
    println("Name                     " + name1);
    println("Xylephone 1              " + rms1_scaled);
    println("Xylephone 1 mapped       " + X1m);
    println("Mpg                      " + mpg1);
    println("Mpg mapped               " + mpg1m);
    println("Cylinders                " + cyl1);
    println("Cylinders mapped         " + cyl1m);
    println("Displacement             " + dis1);
    println("Displacement mapped      " + dis1m);
    println("Hps                      " + hsp1);
    println("Hps mapped               " + hsp1m);
    println("Weight                   " + wgt1);
    println("Weight mapped            " + wgt1m);
    println("Acceleration             " + acel1);
    println("Acceleration mapped      " + acel1m);
    println("Year                     " + year1);
    println("Year mapped              " + year1m);
    println("Origin                   " + orgn1);
    println("Origin mapped            " + orgn1m);
    
    
    //saveFrame("output/Art_####.png");
    
    }
    
    
    
    
    
}
   
   
    
  
}

   }
    }
    }
    }
    }
    }
}

float getX(int i) {
  return 100*(noise(frameCount/200.0, i)+currScale)*sin(2*PI*i/NUM_PTS)+width/2;
}

float getY(int i) {
  return 100*(noise(frameCount/200.0, i)+currScale)*cos(2*PI*i/NUM_PTS)+height/2;
}

void setRotationDefault() { rotationState = 0; }
void setRotationRight()   { rotationState = 1; }
void setRotationLeft()    { rotationState = 2; }

void incRotation() { currRotation += ROTATION_INC; }
void decRotation() { currRotation -= ROTATION_INC; }

void resetRotation() {
  if (currRotation > DEFAULT_ROTATION) decRotation();
  else if (currRotation < DEFAULT_ROTATION) incRotation();
}

void toggleScaleUp() { scaleUp = !scaleUp; }

void incScale() { currScale += SCALE_INC; }

void resetScale() {
  if (currScale > MIN_SCALE) currScale -= SCALE_INC;
}