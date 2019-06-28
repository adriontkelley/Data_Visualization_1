///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu




//Bird
Table T0Headx;
Table T1Heady;
Table T2Neckx;
Table T3Necky;
Table T4Lshouldx;
Table T5Lshouldy;
Table T6Rshouldx;
Table T7Rshouldy;
Table T8Lelbowx;
Table T9Lelbowy;
Table T10Relbowx;
Table T11Relbowy;
Table T12Lhandx;
Table T13Lhandy;
Table T14Rhandx;
Table T15Rhandy;

//Stock Market
Table T16AAPLx;
Table T17AAPLy;
Table T18CSXx;
Table T19CSXy;
Table T20GOOGx;
Table T21GOOGy;
Table T22VRTXx;
Table T23VRTXy;
Table T24APAx;
Table T25APAy;
Table T26AYIx;
Table T27AYIy;
Table T28RRCx;
Table T29RRCy;
Table T30TGTx;
Table T31TGTy;


int index = 0;



int cols, rows;
int scl = 20;
int w = 2000;
int h = 1600;

float flying = 0;

float[][] terrain;




void setup() {
  size(1400, 800, P3D);
  frameRate(24);
  
  cols = w / scl;
  rows = h / scl;
  terrain = new float[cols][rows];
  
  
  
//Bird
  T0Headx = loadTable("p.tsv");
  T1Heady = loadTable("p.tsv");
  T2Neckx = loadTable("p.tsv");
  T3Necky = loadTable("p.tsv");
  T4Lshouldx = loadTable("p.tsv");
  T5Lshouldy = loadTable("p.tsv");
  T6Rshouldx = loadTable("p.tsv");
  T7Rshouldy = loadTable("p.tsv");
  T8Lelbowx = loadTable("p.tsv");
  T9Lelbowy = loadTable("p.tsv");
  T10Relbowx = loadTable("p.tsv");
  T11Relbowy = loadTable("p.tsv");
  T12Lhandx = loadTable("p.tsv");
  T13Lhandy = loadTable("p.tsv");
  T14Rhandx = loadTable("p.tsv");
  T15Rhandy = loadTable("p.tsv");
  
  
  //Stock Market
  T16AAPLx = loadTable("AAPL.tsv");
  T17AAPLy = loadTable("AAPL.tsv");
  T18CSXx = loadTable("CSX.tsv");
  T19CSXy = loadTable("CSX.tsv");
  T20GOOGx = loadTable("GOOG.tsv");
  T21GOOGy = loadTable("GOOG.tsv");
  T22VRTXx = loadTable("VRTX.tsv");
  T23VRTXy = loadTable("VRTX.tsv");
  T24APAx = loadTable("APA.tsv");
  T25APAy = loadTable("APA.tsv");
  T26AYIx = loadTable("AYI.tsv");
  T27AYIy = loadTable("AYI.tsv");
  T28RRCx = loadTable("RRC.tsv");
  T29RRCy = loadTable("RRC.tsv");
  T30TGTx = loadTable("TGT.tsv");
  T31TGTy = loadTable("TGT.tsv");
  
  noSmooth();
  
 
  
}

void draw() {
 background(153, 221, 255);
  
  
  
  
  
  //Bird
    int Headx = T0Headx.getInt(index, 0);
    int Heady = T1Heady.getInt(index, 1);
    int Neckx = T2Neckx.getInt(index, 2);
    int Necky = T3Necky.getInt(index, 3);
    int Lshouldx = T4Lshouldx.getInt(index, 4);
    int Lshouldy = T5Lshouldy.getInt(index, 5);
    int Rshouldx = T6Rshouldx.getInt(index, 6);
    int Rshouldy = T7Rshouldy.getInt(index, 7);
    int Lelbowx = T8Lelbowx.getInt(index, 8);
    int Lelbowy = T9Lelbowy.getInt(index, 9);
    int Relbowx = T10Relbowx.getInt(index, 10);
    int Relbowy = T11Relbowy.getInt(index, 11);
    int Lhandx = T12Lhandx.getInt(index, 12);
    int Lhandy = T13Lhandy.getInt(index, 13);
    int Rhandx = T14Rhandx.getInt(index, 14);
    int Rhandy = T15Rhandy.getInt(index, 15);
    
    
    //Stock Market
    int AAPLx = T16AAPLx.getInt(index, 1);
    int AAPLy = T17AAPLy.getInt(index, 2);
    int CSXx = T18CSXx.getInt(index, 1);
    int CSXy = T19CSXy.getInt(index, 2);
    int GOOGx = T20GOOGx.getInt(index, 1);
    int GOOGy = T21GOOGy.getInt(index, 2);
    int VRTXx = T22VRTXx.getInt(index, 1);
    int VRTXy = T23VRTXy.getInt(index, 2);
    int APAx = T24APAx.getInt(index, 1);
    int APAy = T25APAy.getInt(index, 2);
    int AYIx = T26AYIx.getInt(index, 1);
    int AYIy = T27AYIy.getInt(index, 2);
    int RRCx = T28RRCx.getInt(index, 1);
    int RRCy = T29RRCy.getInt(index, 2);
    int TGTx = T30TGTx.getInt(index, 1);
    int TGTy = T31TGTy.getInt(index, 2);
    
    
 
    
    
    
  
  
  
  
   
  
    //Bird
    if (index < T0Headx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    
    if (index < T1Heady.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T2Neckx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T3Necky.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T4Lshouldx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
   if (index < T5Lshouldy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T6Rshouldx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T7Rshouldy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T8Lelbowx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    
    if (index < T9Lelbowy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T10Relbowx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T11Relbowy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T12Lhandx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T13Lhandy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
      
      if (index < T14Rhandx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
      
      if (index < T15Rhandy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
      
      
      
      
      
      //Stock Market
       if (index < T16AAPLx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    
    if (index < T17AAPLy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T18CSXx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T19CSXy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T20GOOGx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
   if (index < T21GOOGy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T22VRTXx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T23VRTXy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T24APAx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    
    if (index < T25APAy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T26AYIx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T27AYIy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T28RRCx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
    if (index < T29RRCy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
    
      
      if (index < T30TGTx.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
      
      if (index < T31TGTy.getRowCount()) {
      //Here is the loop from Ex_14.
      if (index == 1020) { 
      index = 0;
    
    }
      
      
      
      
      index++;
      

   //float MapHeadx = map(Headx, 0,  48, 0 , 200);
   
   
   
    

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
    }
    }
    
    flying -= 0.1;
  
  float yoff = flying;  
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -150, 150);
      xoff += 0.2;
    }
    yoff += 0.2;
  }

//Bird
 pushMatrix();
translate(-350,150);
   
     pushStyle();
    stroke(0);
    strokeWeight(5);
    fill(255);
    ellipse(Headx, Heady, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Neckx, Necky - 75, 25, 25);
   
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Lshouldx + 100, Lshouldy - 100, 25, 25);
    
    
    
    
   
    strokeWeight(5);
    fill(255);
    ellipse(Rshouldx - 100, Rshouldy - 100, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Lelbowx + 200, Lelbowy/2, 25, 25);
    
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Relbowx - 200, Relbowy/2, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Lhandx + 300, Lhandy/2, 25, 25);
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(Rhandx - 300, Rhandy/2, 25, 25);
    
    popStyle();
    popMatrix();
    
    
    pushMatrix();
    pushStyle();
    fill(0);
    textSize(40);
    text("Bird Flight Pattern", 200, 100);
    popStyle();
    popMatrix();
    
    
    
    //Stock Market
    pushMatrix();
translate(350,150);
pushStyle();
   
     
    stroke(0);
    strokeWeight(5);
    fill(255);
    ellipse(floor(AAPLx) + 665, floor(AAPLy) + 100, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(CSXx) + 700, floor(CSXy) + 220, 25, 25);
    
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(GOOGx) + 360, floor(GOOGy) - 125, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(VRTXx) + 700, floor(VRTXy) + 160, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(APAx) + 550, floor(APAy) + 160, 25, 25);
    
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(AYIx) + 800, floor(AYIy) + 150, 25, 25);
    
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(RRCx) + 400, floor(RRCy) + 180, 25, 25);
    
    
    
    
    strokeWeight(5);
    fill(255);
    ellipse(floor(TGTx) + 950, floor(TGTy) + 180, 25, 25);
    
    popStyle();
    popMatrix();
    
    
    pushMatrix();
    pushStyle();
    fill(0);
    textSize(40);
    text("Stock Market Flight Pattern", 800, 100);
    popStyle();
    popMatrix();


pushMatrix();
pushStyle();
stroke(150);
  fill(128, 0, 0);
  
  translate(width/2, height/1.25);
  rotateX(PI/2.25);
  
  translate(-w/2, -h/2);
  
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x * scl, y * scl, terrain[x][y]);
      vertex(x * scl, (y + 1) * scl, terrain[x][y+1]);
      // rect(x * scl, y * scl, scl, scl);
    }
    endShape();
  }
  popStyle();
  popMatrix();
  
  
  
  

  } 




   