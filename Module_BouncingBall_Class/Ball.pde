
//The class name
class Ball {
  
  //The data
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  
  Ball() {
    
    x = random(0,width);
    y = random(0,height);
    xSpeed = 1;
    ySpeed = 3;
  }
  
  void speed() {
    
    x = x + xSpeed;
    y = y + ySpeed;
    
  }
  
  void bounce(){

    if((x > width) || (x < 0)){
        xSpeed = xSpeed * -1;
    }

    if ((y > height) || (y < 0)){
        ySpeed = ySpeed * -1;
    }

  }

  void display(){
  
      noStroke();
      fill(175);
      ellipse(x,y,15,15);
  }

}
