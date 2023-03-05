//Create a PImage.
PImage img;

//Global variable to control image resolution.
int resolution;
void setup(){
  
  //Set the display size.
  size(200,200);
  
  //Load the image in the PImage variable.
  img = loadImage("data/face.png");
  
  //Set resolution
  resolution = 5;
  
  //No stroke
  noStroke();
  
  //Slow down the frame rate so you can see the change.
  frameRate(2);
}

void draw(){
  
  //Clear display window and set it to white.
  background(255);
 
  //For every row in our image.  Increase by the resolution size.
  for(int y = 0; y < height; y = y + resolution){
    
    //For every pixel in the row.  Increase by the resolution size.
    for(int x = 0; x < width; x = x + resolution){
      
      //Find the array position of the pixel
      int loc = x + y*width;
      
      //Pull the color component for each pixel array position.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
     
      //Set the fill to the color of the pixel.
      fill(r,g,b);
      
      //Draw a rectangle at the location of the pixel
      //and the size of the resolution.
      rect(x,y,resolution,resolution);
      
    }
  }
  
  //You can also increase the resolution in the draw loop.
  //resolution++;
  

}
