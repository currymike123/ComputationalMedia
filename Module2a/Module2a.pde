
////New empty array with 0 elements
//String [] s = new String[0];

////How many items are in the array.  Use ".length"
//println(s.length);

////Add three items to the array using append
//s = append(s, "Mike");
//s = append(s, "Curry");
//s = append(s, "Jane Doe");

////How many items are in the array.
//println(s.length);

////Print every item in the array.
//for(int i = 0; i < s.length; i++){
//  print(s[i] + " ");
//}

////Skip a line
//println("");

////Sort the array.  With strings the array is sorted alphabetically.
//s = sort(s);

////Print every item in the array.
//for(int i = 0; i < s.length; i++){
//  print(s[i] + " ");
//}

////Skip a line
//println("");

////Take elements at index 1 to 2.
//s = subset(s, 1, 2);
//println(s.length);

////Print every item in the array.
//for(int i = 0; i < s.length; i++){
//  print(s[i] + " ");
//}

////Skip a line
//println("");

////Increase the array to size 5.
//s = expand(s, 5);

////Print the length
//println(s.length);

////Print every item in the array.
//for(int i = 0; i < s.length; i++){
//  print(s[i] + " ");
//}

////Skip a line
//println("");

////Increase the array to size 5.
//s = expand(s, 5);

////Print the length
//println(s.length);

////Print every item in the array.
//for(int i = 0; i < s.length; i++){
//  print(s[i] + " ");
//}

////---------------------------------------------------------------

////Create an array of x-axis locations
//int[] xLoc = {20, 40, 80, 85, 92};

////Draw lines from these locations
//for (int i = 0; i < xLoc.length; i++){
//  line(xLoc[i], 0, xLoc[i], 100);
//}

////---------------------------------------------------------------

////Create two new arrays to store location values. 
//int num = 50;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup(){
//  size(300,300);
//  noStroke();
  
//  //Draws all geometry with smooth (anti-aliased) edges
//  smooth();
  
//  fill(255,102);
//}

//void draw(){
  
//  background(0);
  
//  //Shift the values to the right.  
//  for (int i = num-1; i > 0; i--){
//    x[i] = x[i - 1];
//    y[i] = y[i - 1];
//  }
  
//  //Add values to the beginning of the array.
//  x[0] = mouseX;
//  y[0] = mouseY;
  
//  //Draw circles at the array locations.
  
//  for(int i = 0; i < num; i++){
//    ellipse(x[i], y[i], i/2.0, i/2.0);
//  }
  
//}

////---------------------------------------------------------------
//beingShape(), endShape(), vertex()

//noFill();
//beginShape();
//vertex(30,20);
//vertex(85,20);
//vertex(85,75);
//vertex(30,75);
//endShape();

//noFill();
//beginShape();
//vertex(30,20);
//vertex(85,20);
//vertex(85,75);
//vertex(30,75);
//endShape(CLOSE);

//fill(255);
//beginShape();
//vertex(30,20);
//vertex(85,20);
//vertex(85,75);
//vertex(30,75);
//endShape(CLOSE);

////---------------------------------------------------------------
//2D array

//int[][] points = { {50,18}, {61,37}, {83,43}, {69,60}, {71,82}, {50, 73},
//            {29,82}, {31,60}, {17,43}, {39,37} };

//void setup(){
//  size(300,300);
//  fill(0);
//  smooth();
//}

//void draw(){
//  background(180);
  
//  //Translate to a new location on screen.  Moving the (0,0) coordinate.
//  translate(mouseX - 50, mouseY - 50);
//  beginShape();
//  for (int i = 0; i < points.length; i++){
//    vertex(points[i][0], points[i][1]);
//  }
//  endShape();
  
//}

////---------------------------------------------------------------
