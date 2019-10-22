 Bacteria[] colony;   
 void setup()   
 {     
 	size(750, 750);
 	frameRate(20);
 	colony = new Bacteria[500];   
 	
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria((int)(Math.random()*750),(int)(Math.random()*750));
 	}
 }   
 void draw()   
 {
 	background(75);
 	stroke(255);
 	fill(75);
 	ellipse(375,375,750,750);
 	ellipse(375,375,500,500);
 	ellipse(375,375,250,250);
 	stroke(0);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	fill(0);
 	stroke(255);
 	ellipse(375,375,50,50);
 }

 class Bacteria    
 {     
 	int myX, myY, type;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		type = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}  
 	void move()
 	{
 		if(dist(myX, myY, 375, 375) < 125)
 		{
 			if(myX > 375){
 				myX -= (int)(Math.random()*9-1);
 			}
 			if(myX < 375){
 				myX += (int)(Math.random()*9-1);
 			}
 			if(myX == 375){
 				myX += (int)(Math.random()*9-4);
 			}
 			if(myY > 375){
 				myY -= (int)(Math.random()*9-1);
 			}
 			if(myY < 375){
 				myY += (int)(Math.random()*9-1);
 			}
 			if(myY == 375){
 				myY += (int)(Math.random()*9-4);
 			}

 		}
 		if(dist(myX, myY, 375, 375) < 250)
 		{
 			if(myX > 375){
 				myX -= (int)(Math.random()*9-2);
 			}
 			if(myX < 375){
 				myX += (int)(Math.random()*9-2);
 			}
 			if(myX == 375){
 				myX += (int)(Math.random()*9-4);
 			}
 			if(myY > 375){
 				myY -= (int)(Math.random()*9-2);
 			}
 			if(myY < 375){
 				myY += (int)(Math.random()*9-2);
 			}
 			if(myY == 375){
 				myY += (int)(Math.random()*9-4);
 			}
 		}
 		if(dist(myX, myY, 375, 375) < 375)
 		{
 			if(myX > 375){
 				myX -= (int)(Math.random()*9-3);
 			}
 			if(myX < 375){
 				myX += (int)(Math.random()*9-3);
 			}
 			if(myX == 375){
 				myX += (int)(Math.random()*9-4);
 			}
 			if(myY > 375){
 				myY -= (int)(Math.random()*9-3);
 			}
 			if(myY < 375){
 				myY += (int)(Math.random()*9-3);
 			}
 			if(myY == 375){
 				myY += (int)(Math.random()*9-4);
 			}
 		}
 		if(dist(myX, myY, 375, 375) < 600)
 		{
 			if(myX > 375){
 				myX -= (int)(Math.random()*9-4);
 			}
 			if(myX < 375){
 				myX += (int)(Math.random()*9-4);
 			}
 			if(myX == 375){
 				myX += (int)(Math.random()*9-4);
 			}
 			if(myY > 375){
 				myY -= (int)(Math.random()*9-4);
 			}
 			if(myY < 375){
 				myY += (int)(Math.random()*9-4);
 			}
 			if(myY == 375){
 				myY += (int)(Math.random()*9-4);
 			}
 		}
 	}
 	void show()
 	{
 		fill(type);
 		ellipse(myX, myY, 10, 10);
 	}
 }    