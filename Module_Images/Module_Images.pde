//Sprint Example

//Load an array of images.
PImage[] sprite = new PImage[3];

//Integers for the x,y positions and the current image.
int x,y,count;

void setup(){
  size(500,500);
  
  //Load all the sprites into an array.
  for(int i = 0; i < sprite.length; i++){
    sprite[i] = loadImage("Sprites/" + i + ".png");
  }
  
  //Intialize variables.
  x = 0;
  y = height/2;
  count = 0;
  
  //Slow down frame rate so the sprite renders correctly.
  frameRate(4);
  
}

void draw(){
  
  //Clear the display window.
  background(255);
  
  //If you are not past the array position of the last image.
  if(count < 3){
    
    //Draw the image at that array position.
    image(sprite[count],x,y);
    
    //increment the count.
    count++;
    
  }else{ //Otherwise set the count to 0.
  
    //Set the count to 0.
    count = 0;
    
    //Draw the image at that array position.
    image(sprite[count],x,y);
  }
  
  //Increment the x coordinate so the sprite moves across the screen.
  x = x + 15;
}
