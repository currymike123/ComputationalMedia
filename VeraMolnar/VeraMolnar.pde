//Create large rectangle.
//Reduce it's size by a factor.
//Stop drawing when we reach test.


void setup(){
  size(525,525);
  stroke(0);
  noFill();
}

void draw(){
  noLoop();
  for(int i = 5; i < 50; i  = i + 5){
    int test = int(round(random(1)));
    if(test == 1){
      rect(i,i,100 - (i*2),100 - (i*2));
    }
  }
}
