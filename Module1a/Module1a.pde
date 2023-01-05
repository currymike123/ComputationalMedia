size(100,100);

//Point

//point(50,50);

//You can connect multiple points to form a line.
//point(50, 50);
//point(50, 51);
//point(50, 52);
//point(50, 53);
//point(50, 54);
//point(50, 55);
//point(50, 56);
//point(50, 57);
//point(50, 58);
//point(50, 59);

//Line
//line(50, 50, 50, 59);

//When the Y coordinates are the same it's horizontal
//line(10, 30, 90, 30);
//line(10, 40, 90, 40);
//line(10, 50, 90, 50);

//When the X coordinates are the same it's vertical.
//line(40, 10, 40, 90);
//line(50, 10, 50, 90);
//line(60, 10, 60, 90);

//When two lines are a point they are connected.
//line(15, 30, 5, 80);
//line(90, 65, 5, 80);

//Triangle
//triangle(60, 10, 25, 60, 75, 65); //filled
//line(60, 30, 25, 80); //outlined
//line(25, 80, 75, 85); //outlined
//line(75, 85, 60, 30); //outlined

//Quad
//quad(40, 30, 90, 20, 70, 60, 30, 80);

//quad(20, 20, 20, 70, 60, 90, 60, 40);
//quad(20, 20, 70, 5, 90, 5, 60, 40);

//Rectangle
//rect(15, 15, 40, 40);
//rect(55, 55, 25, 25);

//Ellipse
//ellipse(40, 40, 50, 50);
//ellipse(80, 80, 30, 30);

//Bezier
bezier(32, 20, 80, 5, 80, 75, 30, 75);
//control points
line(32, 20, 80, 5);
ellipse(80, 5, 5, 5);
line(80, 75, 30, 75);
ellipse(80, 75, 5, 5);
