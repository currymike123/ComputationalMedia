float x = 0;
float y = 0;
float spacing = 50;

//One array for your X sizes.
int[] linesArrX = {50, 200, 350, 500, 650};

//One array for your Y sizes.
int[] linesArrY = {50, 200, 350, 500, 650};

//One array for your Weights.
int[] linesWeight = {30, 25, 20, 15, 10};

////////////////////////////////////////////////////////////////////////////////////////

void setup() {
size(1450,750);
frameRate(30);
}

////////////////////////////////////////////////////////////////////////////////////////

void draw(){
background(206,117,190);
//lines move across screen giving the illusion of zooming in
spacing = spacing + random(3);
//(value 1 = positioning, value 2 = stroke weight)


//Both of these arrays are the same length (LinesXArr.length = linesWEight.length).  So let's iterate through linesXArr. 
//Start at array position 0 and go to the end of the array (linesArrX.length)
for(int i = 0; i < linesArrX.length; i++){
  linesX(linesArrX[i], linesWeight[i]); 
}

//Both of these arrays are the same length (LinesYArr.length = linesWEight.length).  So let's iterate through linesYArr. 
//Start at array position 0 and go to the end of the array (linesArrY.length)
for(int i = 0; i < linesArrY.length; i++){
  linesY(linesArrY[i], linesWeight[i]);
}

}

////////////////////////////////////////////////////////////////////////////////////////

//x-axis Lines
void linesX(int _x, int w){
strokeWeight(w);
x = _x;
  while (x < width){
  line(x,0,x,height);
  x = x + spacing;
  }
}

//y-axis Lines
void linesY(int _y, int w){
strokeWeight(w);
y = _y;
  while (y < height){
  line(0,y,width,y);
  y = y + spacing;
 }
}
