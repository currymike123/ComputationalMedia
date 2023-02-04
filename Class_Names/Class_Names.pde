
//Global Variable array for students names.
String[] names = {"Tamiur", "Ethan", "Lara", "Mette", "Michelle", "Jaden", "Kevin"};
int selection;
String currentName;

void setup(){
  size(800,800);
  background(200,15,30);
  //smooth edges;
  smooth();
  stroke(0);
  textSize(45);
  text("Assignment 1: Random Name Selector", 40, 120);
  drawShape();
}

void draw(){
  
  if (keyPressed == true) {
    background(200,15,30);
    randomSelection();
    drawShape();
    fill(255);
    textSize(120);
    text(currentName, 40, 120);
    delay(500);
  }
}

void drawShape(){
   beginShape();
      for(int i = 0; i < names.length+1; i++){
        fill(100);
        vertex(int(random(200,width)),int(random(200,height)));
      }
      endShape(CLOSE);
      
     beginShape();
      for(int i = 0; i < names.length+1; i++){
        fill(155);
        vertex(int(random(200,width)),int(random(200,height)));
      }
    endShape(CLOSE);
}



void randomSelection(){
  
  //Make a random selection
  selection = int(random(0,names.length));
  currentName = names[selection];
  //Create a random selection
  if(names.length > 1){
    println(names[selection]);
      //If my selection is not the last element of the array.
      if(selection != names.length-1){
        
        //create a temp array of all the elements before to the selection.
        String[] tempNames = subset(names,0,selection);
        //create a temp array of all the elements after the selection.
        String[] tempNames2 = subset(names,selection+1,(names.length-1)-selection);
        //combine the arrays
        names = concat(tempNames, tempNames2);
      }else{
        //save all the elements before the selection.
        names = subset(names,0,selection);
      }
      println(names);
      
  }else{
    println(names[selection]);
    println(names);
  }
  
  
}
