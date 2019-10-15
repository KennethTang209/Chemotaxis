 Bacteria test;   
 void setup()   
 {     
 	size(500, 500);
 	background(127);
 	stroke(1);
 	test = new Bacteria(250,250);   
 }   
 void draw()   
 {
 	test.show();
 	test.move();
 }
 class Bacteria    
 {     
 	int myX, myY, type;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		type = (int)(Math.random()*255);
 	}  
 	void move()
 	{
 		myX += (int)(Math.random()*11)-5;
 		myY += (int)(Math.random()*11)-5;
 	}
 	void show()
 	{
 		ellipse(myX, myY, 5, 5);
 	}
 }    