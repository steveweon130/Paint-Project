//Steve Weon
//Block 1-2a
//Sept 30, 2020 ~ Oct 5, 2020
//Paint Project


//HOW TO USE THE TOOLS (LEFT TO RIGHT)
//1.  RGB Sliders (Horizontal slides)                             -> Select the color by moving the slide.
//2.  12 color pallete (12 Circular Buttons)                      -> Click the default color you want to use
//3.  Thickness Slider (Vertical Slide)                           -> Displays the current color and thickness/strokeWeight. Move the scroll down to increase thickness/strokeWeight
//4.  Eraser (Circular Button with Eraser Icon)                   -> Click to use eraser (color white)
//5.  Fill (Rectangular Button with text "Fill")                  -> Displays the current color. If clicked, it will fill the canvas with the color selected.
//6.  Meme Stamp (Rectangular Button with meme Image)             -> Turns the Stamp mode on. Click or drag on canvas to stamp Meme image. Click again to turn off
//7.  Meme Stamp Size Increase (Rectangular Button with text "+") -> Increases the Stamp size by 10 pixels. Maximum is 400 pixels.
//8.  Meme Stamp Size Decrease (Rectangular Button with text "-") -> Decreases the Stamp size by 10 pixels. Minumum is 30 pixels.
//9.  Meme Stamp Size Display (Text "Size:n" | 30 <= n <= 200)    -> Displays the current stamp size.
//10. New Project (Rectangular Button with text "New")            -> Resets the Canvas & Toolbar Settings
//11. Load Image (Rectangular Button with text "Load")            -> Loads an image from external files.
//12. Save Image (Rectangular Button with text "Save")            -> Saves the project into files as 600px X 600px


//START OF CODE ///////////////////////////////////////////////////////////////////////////////////////////////////////////////


//DECLARATIONS =========================================================================
PFont arial;
PFont arialsmall;

int sliderRX;
boolean sliderRXOn;

int sliderGX;
boolean sliderGXOn;

int sliderBX;
boolean sliderBXOn;

float red;
float green;
float blue;
float thickness;

int sliderThick;
boolean sliderThickOn;

PImage eraser;

PImage meme;
boolean memeOn;

int stampSize;
// END OF DECLARATIONS llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void setup() { //Set up =============================================================
  size(600, 734);
  background(255);
  
  arial = createFont("arial.ttf", 40);
  arialsmall = createFont("arial.ttf", 25);
   
  sliderRX = 15;
  sliderRXOn = false;

  sliderGX = 15;
  sliderGXOn = false;
  
  sliderBX = 15;
  sliderBXOn = false;
  
  red = 0;
  green = 0;
  blue = 0;
  thickness = 4;
  
  sliderThick = 27;
  sliderThickOn = false;
  
  eraser = loadImage("eraser.png");
  
  meme = loadImage("meme.png");
  memeOn = false;
  
  stampSize = 200;
} // END OF SETUP llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void draw() { //Draw ============================================================================
  fill(255);
  
  //Toolbar Background
  stroke(0);
  strokeWeight(4);
  fill(180);
  rect(0, 0, width-2, 130);
  
  //Red Color Slide
  stroke(255,0,0);
  strokeWeight(6);
  fill(255,0,0);
  line(15, 25, 100, 25);
  strokeWeight(3);
  tactileSlider(sliderRX, 25, 10);
  circle(sliderRX, 25, 20);
  
  //Green Color Slide
  stroke(0,255,0);
  strokeWeight(6);
  fill(0,255,0);
  line(15, 62, 100, 62);
  strokeWeight(3);
  tactileSlider(sliderGX, 62, 10);
  circle(sliderGX, 62, 20);
  
  //Blue Color Slide
  stroke(0,0,255);
  strokeWeight(6);
  fill(0,0,255);
  line(15, 100, 100, 100);
  strokeWeight(3);
  tactileSlider(sliderBX, 100, 10);
  circle(sliderBX, 100, 20);
  
  //Color Buttons
    //Red
    stroke(255,0,0);
    fill(255,0,0);
    tactileColor(140, 20, 10);
    circle(140, 20, 20);
    
    //Orange
    stroke(255,125,0);
    fill(255,125,0);
    tactileColor(170, 20, 10);
    circle(170, 20, 20);
    
    //Yellow
    stroke(255,255,0);
    fill(255,255,0);
    tactileColor(200, 20, 10);
    circle(200, 20, 20);
        
    //Lime
    stroke(0,255,0);
    fill(0,255,0);
    tactileColor(140, 50, 10);
    circle(140, 50, 20);
    
    //Green
    stroke(0,128,0);
    fill(0,128,0);
    tactileColor(170, 50, 10);
    circle(170, 50, 20);
  
    //Sky Blue
    stroke(135,206,235);
    fill(135,206,235);
    tactileColor(200, 50, 10);
    circle(200, 50, 20);
    
    //Blue
    stroke(0,0,255);
    fill(0,0,255);
    tactileColor(140, 80, 10);
    circle(140, 80, 20);
    
    //Purple
    stroke(255,0,255);
    fill(255,0,255);
    tactileColor(170, 80, 10);
    circle(170, 80, 20);    
    
    //Brown
    stroke(150,75,0);
    fill(150,75,0);
    tactileColor(200, 80, 10);
    circle(200, 80, 20); 
    
    //Pink
    stroke(255,192,203);
    fill(255,192,203);
    tactileColor(140, 110, 10);
    circle(140, 110, 20); 
    
    //Grey
    stroke(128,128,128);
    fill(128,128,128);
    tactileColor(170, 110, 10);
    circle(170, 110, 20); 
    
    //Black
    stroke(0,0,0);
    fill(0,0,0);
    tactileColor(200, 110, 10);
    circle(200, 110, 20); 
    
  //Thickness & Stroke Display Slide
  stroke(red,green,blue);
  fill(red,green,blue);  
  thickness = map(sliderThick, 25, 100, 5, 40); 
  strokeWeight(thickness);
  line(250, 25, 250, 100);
  strokeWeight(4);
  stroke(100);
  tactileThickSlider(250, sliderThick, 13);
  circle(250, sliderThick, 25);  
  
  //Eraser Button
  strokeWeight(5);
  stroke(0);
  tactileEraser(320, 52, 37);
  circle(320, 52, 75);
  image(eraser, 285, 16, 70, 70);
  
  //Background Fill Button
  fill(red, green, blue);
  tactileFill(283, 97, 75, 25);
  rect(283, 97, 75, 25);
  textAlign(CENTER, CENTER);
  textFont(arialsmall);
  textColor(283, 97, 75, 25);
  text("Fill", 320, 107);
  
  //Meme Stamp Button  
  tactileMeme(375, 16, 75, 75);
  memeOnOff();
  rect(375, 16, 75, 75);
  image(meme, 378, 18, 70, 70);
  
  //Meme Stamp Size Bigger
  strokeWeight(5);
  stroke(0);
  tactileButton(460, 16, 30, 30);
  rect(460, 16, 30, 30);
  fill(0);
  textFont(arial);
  text("+", 475, 27);
  
  //Meme Stamp Size Smaller
  fill(180);
  tactileButton(460, 61, 30, 30);
  rect(460, 61, 30, 30);
  fill(0);
  text("-", 475, 69);
  
  //Meme Stamp Size Indicator
  textFont(arialsmall);
  text("Size:"+ stampSize, 435, 108);
  
  //New Button
  fill(180);
  tactileButton(500, 16, 90, 25);
  rect(500, 16, 90, 25);
  fill(0);
  text("New", 545, 25.5);
  
  //Load Button
  fill(180);
  tactileButton(500, 56, 90, 25);
  rect(500, 56, 90, 25);
  fill(0);
  text("Load", 545, 65.5);
  
  //Save Button
  fill(180);
  tactileButton(500, 96, 90, 25);
  rect(500, 96, 90, 25);
  fill(0);
  text("Save", 545, 105.5);
  fill(255);
  
} // END OF DRAW llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void mouseDragged() { //mouseDragged ====================================================================
  //Color Sliders Dragged
  if (sliderRXOn == true) {
    controlRSlider();
  }  
  if (sliderGXOn == true) {
    controlGSlider();
  }  
  if (sliderBXOn == true) {
    controlBSlider();
  }
  
  //Thick Slider Dragged
  if (sliderThickOn == true) {
    controlThickSlider();
  }
  
  //Meme Stamp Draw by Dragged
  if (memeOn == true && mouseY > 130) {  
    image(meme, mouseX-stampSize/2, mouseY-stampSize/2, stampSize, stampSize);
  } else {
      linedraw();
  }
} // END OF mouseDragged llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void mouseReleased() { //mouseReleased ==================================================================
  //Color Sliders Clicked
  controlRSlider();
  controlGSlider();
  controlBSlider();
  
  //Meme Stamp & Line Draw by Click
  if (memeOn == true && mouseY > 130) {  
    image(meme, mouseX-stampSize/2, mouseY-stampSize/2, stampSize, stampSize);
  } else {
      linedraw();
  }
  
  //Color Buttons:
    //Red
    if (dist(140, 20, mouseX, mouseY) < 10) {
      red = 255;
      green = 0;
      blue = 0;
      sliderRX = 100;
      sliderGX = 15;
      sliderBX = 15;
      memeOn = false;
    }
      
    //Orange
      if (dist(170, 20, mouseX, mouseY) < 10) {
       red = 255;
       green = 125;
       blue = 0;
       sliderRX = 100;
       sliderGX = 57;
       sliderBX = 15;
       memeOn = false;
      }
    
    //Yellow
      if (dist(200, 20, mouseX, mouseY) < 10) {
        red = 255;
        green = 255;
        blue = 0;
        sliderRX = 100;
        sliderGX = 100;
        sliderBX = 15;
        memeOn = false;
      }
              
    //Lime
      if (dist(140, 50, mouseX, mouseY) < 10) {
        red = 0;
        green = 255;
        blue = 0;
        sliderRX = 15;
        sliderGX = 100;
        sliderBX = 15;
        memeOn = false;
      }
    
    //Green
      if (dist(170, 50, mouseX, mouseY) < 10) {
        red = 0;
        green = 128;
        blue = 0;
        sliderRX = 15;
        sliderGX = 58;
        sliderBX = 15;
        memeOn = false;
      }
      
    //Sky Blue
      if (dist(200, 50, mouseX, mouseY) < 10) {
        red = 135;
        green = 206;
        blue = 235;
        sliderRX = 60;
        sliderGX = 84;
        sliderBX = 93;
        memeOn = false;
      }
      
    //Blue
      if (dist(140, 80, mouseX, mouseY) < 10) {
        red = 0;
        green = 0;
        blue = 255;
        sliderRX = 15;
        sliderGX = 15;
        sliderBX = 100;
        memeOn = false;
      }
      
    //Purple
      if (dist(170, 80, mouseX, mouseY) < 10) {
        red = 255;
        green = 0;
        blue = 255;
        sliderRX = 100;
        sliderGX = 15;
        sliderBX = 100;
        memeOn = false;
      }
      
    //Brown
      if (dist(200, 80, mouseX, mouseY) < 10) {
        red = 150;
        green = 75;
        blue = 0;
        sliderRX = 65;
        sliderGX = 40;
        sliderBX = 15;
        memeOn = false;
      }
      
    //Pink
      if (dist(140, 110, mouseX, mouseY) < 10) {
        red = 255;
        green = 192;
        blue = 203;
        sliderRX = 100;
        sliderGX = 79;
        sliderBX = 83;
        memeOn = false;
      } 

    //Grey
      if (dist(170, 110, mouseX, mouseY) < 10) {
        red = 128;
        green = 128;
        blue = 128;
        sliderRX = 58;
        sliderGX = 58;
        sliderBX = 58;
        memeOn = false;
      } 

    //Black
      if (dist(200, 110, mouseX, mouseY) < 10) {
        red = 0;
        green = 0;
        blue = 0;
        sliderRX = 15;
        sliderGX = 15;
        sliderBX = 15;
        memeOn = false;
      }       
      
  //Thickness Slider Clicked
  controlThickSlider();
  
  //Eraser Button Clicked
  if (dist(320, 52, mouseX, mouseY) < 37.5) {
    red = 255;
    green = 255;
    blue = 255;
    sliderRX = 100; 
    sliderGX = 100;
    sliderBX = 100;
    memeOn = false;
  }
  
  //Background Fill Button Clicked
  if (mouseX > 283 && mouseX < 358 && mouseY > 97 && mouseY < 122) {
    stroke(red, green, blue);
    strokeWeight(0);
    fill(red, green, blue);
    rect(0, 132, width, height);
    memeOn = false;
  }
  
  //Meme Stamp Button Clicked
  if (mouseX > 375 && mouseX < 450 && mouseY > 16 && mouseY < 91) {
    memeOn = !memeOn;
  }
  
  //Meme Stamp Bigger Button Clicked
  if (mouseX > 460 && mouseX < 490 && mouseY > 16 && mouseY < 44 && stampSize < 400) {
    stampSize = stampSize + 10;
  }
  
  //Meme Stamp Smaller Button Clicked
  if (mouseX > 460 && mouseX < 490 && mouseY > 61 && mouseY < 91 && stampSize > 30) {
    stampSize = stampSize - 10;
  }
  
  //New Button Clicked
  if (mouseX > 500 && mouseX < 590 && mouseY > 16 && mouseY < 41) {
    red = 0;
    green = 0;
    blue = 0;
    sliderRX = 15;
    sliderGX = 15;
    sliderBX = 15;
    sliderThick = 27;
    memeOn = false;
    stampSize = 200;
    strokeWeight(0);
    stroke(255);
    fill(255);
    rect(0, 132, width, height);
  }
  
  //Load Button Clicked
  if (mouseX > 500 && mouseX < 590 && mouseY > 56 && mouseY < 81) {
    selectInput("Pick an image to load", "openImage");
  }
  
  //Save Button Clicked
  if (mouseX > 500 && mouseX < 590 && mouseY > 96 && mouseY < 121) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }
  
} // END OF mouseReleased llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void linedraw() { //linedraw =============================================================================
  if (mouseY > 130) {
    stroke(red,green,blue);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
} // END OF linedraw llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileSlider (int x, int y, int r) { //tactileSlider ==============================================
    if (dist(x, y, mouseX, mouseY) < r) {
      stroke(255, 255, 0);
    }
} // END OF tactileSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileColor (int x, int y, int r) { //tactileColor ==============================================
    if (dist(x, y, mouseX, mouseY) < r) {
      stroke(255);
    } 
} // END OF tactileColor llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void controlRSlider() { //controlRSlider ====================================================================
  if (mouseX > 15 && mouseX < 100 && mouseY > 15 && mouseY < 35) { 
    sliderRX = mouseX;
    sliderRXOn = true;
    memeOn = false;
  } else {
    sliderRXOn = false;
  }  
  red = map(sliderRX, 15, 100, 0, 255);
} // END OF controlRSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void controlGSlider() { //controlGSlider =======================================================================
  if (mouseX > 15 && mouseX < 100 && mouseY > 52 && mouseY < 72) { 
    sliderGX = mouseX;
    sliderGXOn = true;
    memeOn = false;
  } else {
    sliderGXOn = false;
  }  
  green = map(sliderGX, 15, 100, 0, 255);
} // END OF controlGSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void controlBSlider() { //controlBSlider =======================================================================
  if (mouseX > 15 && mouseX < 100 && mouseY > 90 && mouseY < 110) { 
    sliderBX = mouseX;
    sliderBXOn = true;
    memeOn = false;
  } else {
    sliderBXOn = false;
  }  
  blue = map(sliderBX, 15, 100, 0, 255);
} // END OF controlBSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileThickSlider (int x, int y, int r) { //tactileThickSlider ==============================================
    if (dist(x, y, mouseX, mouseY) < r) {
      stroke(255, 255, 0);
    } 
    if (dist(x, y, mouseX, mouseY) < r && red >= 225 && red <= 255 && green >= 225 && green <= 255) {
      stroke(255, 0, 255);
    }
} // END OF tactileThickSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void controlThickSlider() { //controlThickSlider ================================================================
    if (mouseX > 230 && mouseX < 270 && mouseY > 25 && mouseY < 100) {
      sliderThick = mouseY;
      sliderThickOn = true;
      memeOn = false;
    } else {
      sliderThickOn = false;
    }
} // END OF controlThickSlider llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileEraser (int x, int y, int r) { //tactileEraser ==============================================
  if (dist(x, y, mouseX, mouseY) < r) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
} // END OF tactileEraser llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileFill(int x, int y, int w, int h) { //tactileFill ========================================================
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  }  
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && red == 255 && green == 255 && blue == 0) {
    fill(255, 0, 255);
  }
} // END OF tactileFill llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void textColor(int x, int y, int w, int h) { //textColor ========================================================
  if (red > 128 || green > 128 && blue > 128) {
    fill(0);
  }  else {
    fill(255);
  }
} // END OF textColor llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void tactileMeme(int x, int y, int w, int h) { //tactileMeme ========================================================
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  } else {
    fill(180);
  }
} // END OF tactileMeme llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void memeOnOff() { //memeOnOff ======================================================================================
  if (memeOn == true) {
   stroke(255,0,255);
  } else {
    stroke(0);
  }
} // END OF memeOnOff llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll

void tactileButton(int x, int y, int w, int h) { //tactileButton ========================================================
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  } else {
    fill(180);
  }
} // END OF tactileButton llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void openImage(File f) { //openImage ========================================================
  if (f != null) {
    //Kludge
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic,0,130);
      n = n + 1;
    }
  }
} // END OF openImage llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll


void saveImage(File f) { //saveImage ========================================================
  if (f != null) {
    PImage canvas = get(0, 134, width, height-134);
    canvas.save(f.getAbsolutePath());
  }
} // END OF saveImage llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll

// END OF CODE //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
