//Create a PImage.
PImage img;

int resolution;
void setup(){
  
  //Set the display size.
  size(200,200);
  
  //Load the image in the PImage variable.
  img = loadImage("data/face.png");
  
 
}

void draw(){
  background(255);
  ////Load the pixels of the full display window.
  loadPixels();
  
  ////Load the pixels of our image.
  img.loadPixels();
  
  //For every row in our image.
  for(int y = 0; y < height; y++){
    
    //For every pixel in the row.
    for(int x = 0; x < width; x++){
      
      //Find the array position of the pixel
      int loc = x + y*width;
      
      //Pull the color component for each pixel array position.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      //Change the brightness according to mouse position.
      float adjustBrightness = ((float)mouseX/width);
      
      //Apply to the color components.
      r = r * adjustBrightness;
      g = g * adjustBrightness;
      b = b * adjustBrightness;
      
      //Make sure the colors do not go outside toe 0->255 range.
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
      
      
      //Add them to our display window.
      pixels[loc] = color(r,g,b);
    
      
    }
  }
  
  //Draw the display window.
  updatePixels();
}
