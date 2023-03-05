//RABINOVICH-FABRIKANT EQUATIONS 

//WITHOUT CAM: ================================================================================================================================================================================


//TRAJECTORY VALUES #1
//float x = 0.1; 
//float y = -0.1; 
//float z = 0.1; 

////INITIAL VALUES FOR CONSTANTS 
//float a = 0.05; //alpha 
//float b = 0.1; //lambda 
//float step = 1; 

//TRAJECTORY VALUES #2 
float x = -1; 
float y = -0; 
float z = 0.5; 

float a = 1.1; //alpha 
float b = 0.87; //lambda 
float step = 1; 


void setup(){
  size(800, 600, P3D); 
  background(255); 
  frameRate(2000); 
  stroke(255); 
  colorMode(HSB, 255);

}
float hu = #4c34eb; 
void draw(){
  stroke(255, 255, hu); 
  if(x<4){
    drawSpiral(200+step, 50); //width - 100 or height - 0 
  } else{
    //x = 0.1;
    //y = -0.1;
    //z = 0.1; 
    x = -1;
    y = -0; 
    z = 0.5; 
    hu-=10; 
    step+=10; 
  }
  
  if(step>=width){
    noLoop(); //exit condition
  }
  hu+=0.1;
}

void drawSpiral(float posx, float posy){
  pushMatrix(); 
   translate(posx, posy);
    
    float dt = 0.01; 
    float dx = (y * (z - 1 + pow(x, 2)) + b * x)*dt; 
    float dy = (x * (3 * z + 1 - pow(x, 2)) + b * y)*dt; 
    float dz = (-2 * z * (a + x * y)*dt); 
  
  x = x + dx; 
  y = y + dy; 
  z = z + dz; 
  point(x*100, y*100, z*100); 
  popMatrix(); 
}


// WITH CAM ================================================================================================================================================================================

//float x = 0.1; 
//float y = -0.1; 
//float z = 0.1; 
//import peasy.*;
////INITIAL VALUES FOR CONSTANTS 
//float a = 0.05; //alpha 
//float b = 0.1; //lambda 
//float step = 1; 
//PeasyCam cam; 
//void setup(){
//  size(800, 600, P3D); 
//  background(#6D789E); 
//  frameRate(1000); 
//  stroke(255); 
//  colorMode(HSB, 255);
//  cam = new PeasyCam(this, 500);

//}
//float hu = #00812F; 
//void draw(){
// translate(-width/2, -height/2, -80); 
 
//  if(x<4){
//    drawSun((width/2)+step, height/2); 
//    drawSun((width/2)-step, height/2); 
// //   drawSpiral((width/2)+step, height/2); 
//    drawSun(0+step, height/2); 
//     drawSun(width-step, height/2); 
//  } else{
//    x = 0.1;
//    y = -0.1;
//    z = 0.1; 
//    hu-=10; 
//    step+=10; 
//  }
  
//  if(step>=width/2){
//    noLoop(); //exit condition
//  }
  
  
//}

//void drawSpiral(float posx, float posy){
//    stroke(#00812F, 255, hu); 
//  pushMatrix(); 
//   translate(posx, posy);
    
//    float dt = 0.01; 
//    float dx = (y * (z - 1 + pow(x, 2)) + b * x)*dt; 
//    float dy = (x * (3 * z + 1 - pow(x, 2)) + b * y)*dt; 
//    float dz = (-2 * z * (a + x * y)*dt); 
  
//  x = x + dx; 
//  y = y + dy; 
//  z = z + dz; 
  
//  float r = sqrt((x*x) + (y*y));
//  float theta = atan2(y, x);
  
//  point(theta*100, theta*100, z*100); 
//  popMatrix(); 
//}

//void drawSun(float posx, float posy){
//  pushMatrix(); 
//   translate(posx, posy);
    
//    stroke(#FFBC00, 255, hu);
//    rotate(PI/2);
//    float dt = 0.01; 
//    float dx = (y * (z - 1 + pow(x, 2)) + b * x)*dt; 
//    float dy = (x * (3 * z + 1 - pow(x, 2)) + b * y)*dt; 
//    float dz = (-2 * z * (a + x * y)*dt); 
  
//  x = x + dx; 
//  y = y + dy; 
//  z = z + dz; 
  
//  point(x*100, y*100, z*100); 
//      rotate(PI);
//  popMatrix(); 
  
//}
