//Create a PImage's for our source and destination images
PImage source;
PImage destination; 


void setup(){
  
  //Set the display size.
  size(200,200);
  
  //Load the source image in the PImage variable.
  source = loadImage("data/face.png");
  
  //Blank destination image.
  destination = createImage(source.width, source.height, RGB);

}

void draw(){
  
  // Set the threshold cut off point.
  float threshold = 127;
  
  //Load the two pixels arrays.
  source.loadPixels();
  destination.loadPixels();
  
  for(int x = 0; x < source.width; x++){
    for(int y = 0; y < source.height; y++){
      
      //Location formula.
      int loc = x + y * source.width;
      
      //Test if the brightness is above or below 127.
      if(brightness(source.pixels[loc]) > threshold){
        destination.pixels[loc] = color(255); //White
      } else{
        destination.pixels[loc] = color(0); //Black
      }
    }
  }
  
  //Update the pixels of destination
  destination.updatePixels();
  //Display the destination image.
  image(destination,0,0);
}
