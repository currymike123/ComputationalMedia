
//Global Variable: array for students names.
String[] names = {"Taimur", "Lara", "Mette", "Michelle", };

//Global Variable: integer for the array position of the names array.
int selection;

//Globl Variable:  the current selected name.
String currentName;

void setup(){
  //Display window 800x800
  size(800,800);
  
  //Red background
  background(200,15,30);
  
  //smooth edges;
  smooth();
  
  //Black stroke
  stroke(0);
  
  //Text size 45
  textSize(45);
  
  //First text on screen.
  text("Assignment 1: Drawing Primitives", 40, 120);
  
  //Draw a shape.
  drawShape();
}

void draw(){
  
  //If you press a key.
  if (keyPressed == true) {
    
    //Clear the display window with a red background.
    background(200,15,30);
    
    //Randomly select a name.
    randomSelection();
    
    //Draw a shape.
    drawShape();
    
    //Set the color to white.
    fill(255);
    
    //Set the text size to 70 points.
    textSize(70);
    
    //Draw the current name to the display window.
    text(currentName, 40, 120);
    
    //Wait 500 milliseconds so multiple key pressed events do not occur.
    delay(500);
  }
}

//Create two shapes where the number of vertices = the length of the names array + 1.
void drawShape(){
  
     //Begin drawing the shape.
     beginShape();
     
     //Create vertices.
     for(int i = 0; i < names.length+1; i++){

        fill(100);
        
        //Create a vertex at a random location.  Make sure the 
        //top left corner is clear.  Start random at 200.
        vertex(int(random(200,width)),int(random(200,height)));
      }
      
      //End drawing the shape and close it so it's filled with color.
      endShape(CLOSE);
     
     //Begin drawing the shape.
     beginShape();
     
      //Create vertices.
     for(int i = 0; i < names.length+1; i++){
        
       fill(155);
        
        //Create a vertex at a random location.  Make sure the 
        //top left corner is clear.  Start random at 200.
        vertex(int(random(200,width)),int(random(200,height)));
      }
      
     //End drawing the shape and close it so it's filled with color.
     endShape(CLOSE);
}


//Randomly select a name and remove it from the names array.
void randomSelection(){
  
  //Make a random selection
  selection = int(random(0,names.length));
  
  //Current name = the array position from the random selection.
  currentName = names[selection];
  
  //If the array has more than one name, remove the selected 
  //name from the names array.
  if(names.length > 1){
    
      //Debugging: print the selection
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
      
      //Debugging: print the names array.
      println(names);
      
  }else{
    println(names[selection]);
    println(names);
  }
  
  
}
