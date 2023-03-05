float x = 100;
float y = 100;
float xSpeed = 1;
float ySpeed = 3.1;

void setup(){
  size(200,200);
  smooth();
  background(255);
}

void draw(){
  background(255);
  
  x = x + xSpeed;
  y = y + ySpeed;
  
  if((x > width) || (x < 0)){
    xSpeed = xSpeed * -1; 
  }
  if((y > height) || (y < 0)){
    ySpeed = ySpeed * -1;
  }
  
  stroke(0);
  fill(100);
  ellipse(x,y,20,20);
  
  
}
