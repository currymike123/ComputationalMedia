//Single Objects
Ball myBall;
Ball myBall2;

//An array of Objects;
Ball[] balls;

void setup(){
  size(200,200);
  smooth();
  background(255);
  
  //Instancs of the objects
  myBall = new Ball();
  myBall2 = new Ball();
  
  //Set size of the array of balls.
  balls = new Ball[10];
  
  //Create an instance in an array.
  for (int i = 0; i < balls.length; i++){
    balls[i] = new Ball();
  }
}

void draw(){
  background(255);
  
  //Single Instances
  myBall.speed();
  myBall.bounce();
  myBall.display();
  
  //Single Instances
  myBall2.speed();
  myBall2.bounce();
  myBall2.display();
  
  //Array of Balls
  for (int i = 0; i < balls.length; i++){
    balls[i].speed();
    balls[i].bounce();
    balls[i].display();
  }
  
}
