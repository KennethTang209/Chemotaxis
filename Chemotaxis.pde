 Bacteria[] colony;   
 void setup()   
 {     
 	size(500, 500);
 	background(127);
 	stroke(1);
 	colony = new Bacteria[10];   
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria(250,250);
 	}
 }   
 void draw()   
 {
 	background(127);
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 }
 class Bacteria    
 {     
 	int myX, myY, type, type2, type3;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		type = (int)(Math.random()*255);
 		type2 = (int)(Math.random()*255);
 		type3 = (int)(Math.random()*255);
 	}  
 	void move()
 	{
 		myX += (int)(Math.random()*5)-2;
 		myY += (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		fill(type, type2, type3);
 		ellipse(myX, myY, 20, 20);
 	}
 }    