void setup(){
  size(200,200);
  noLoop();
  noStroke();
  background(80);
}

void draw(){
 circle(40,40,20,150);
 circle(80,80,30,180);
 circle(120,120,40,210);
}

void circle(int x, int y, int size,int gray){
  fill(gray);
  ellipse(x,y,size,size);
}
