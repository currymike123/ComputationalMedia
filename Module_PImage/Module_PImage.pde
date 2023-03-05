PImage[] img = new PImage[3];
int x_pos, y_pos;
int count;
color c = color(100,100);

void setup(){
  size(1000,1000);
  
  for(int i = 0; i < img.length; i++){
    img[i] = loadImage("cSprites/" + i + ".png");
  }
  
  count = 0;
  x_pos = 0;
  y_pos = height/2-100;
  frameRate(3);
}

void draw(){
  background(c);
  
  
  if(count < img.length){
    image(img[count],x_pos, y_pos);
    count++;
  }else{
    count = 0;
    image(img[count],x_pos,y_pos);
  }
  
  x_pos = x_pos + 5;
}
