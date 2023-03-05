// An array of tones to draw our rectangles.
int[] tone = {250,80,255,0,175,125};

void setup(){
  //Display window is 500 x 500 Pixels.
  size(1000,1000);
  //Stroke is set to black and no fill.
  stroke(0);
  noFill();
}

void draw(){
  //Draw only one time through.  Do not loop.
  noLoop();
  
  //Set the background to gray and clear the display window.
  background(245);
  
  //For each for row.
  for(int y = 0; y < height; y = y + 100){
    
    //Draw rectangles all the way across.
    for(int x = 0; x < width; x = x + 100){
      //Call the createRectangle function.
      createRectangle(x,y);
    }
  }
  
  //Save the drawing as a tif file.
  save("Vera.tif");
 
}

//Create rectangle
void createRectangle(int x, int y){
  
  //Push the matrix coordinates (display window) to the stack.
  pushMatrix();
  
  //Translate the canvas to a new position.
  translate(x,y);
  
  //Draw the rectangles inside each other.
  for(int i = 5; i < 50; i  = i + 5){
    //Get a random number from 0 to the length of the tone array.
    int test = int(round(random(tone.length)));
    //If test is 0 don't draw a rectangle.
    if(test != 0){
      //use the tone of the selected color.
      stroke(tone[test-1]);
      
      //The x,y coordinates are the value of i. 
      //The x,y sizes get smaller each iteration.
      rect(i,i,100 - (i*2),100 - (i*2));
    }
  }
  //Pop the x,y coordiantes from the stack.
  popMatrix();
  
}
