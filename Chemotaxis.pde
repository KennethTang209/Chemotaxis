 Bacteria[] colony;   
 void setup()   
 {     
 	size(750, 750);
 	frameRate(40);
 	colony = new Bacteria[400];   
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria((int)(Math.random()*750),(int)(Math.random()*750));
 	}
 }   
 void draw()   
 {
 	background(75);
  stroke(0);
  drawKirby();
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
  drawKirbyMouth();
  
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
 		if(dist(myX, myY, 375, 390) < 200)
 		{
 			if(myX > 375)
 			{
 				myX -= (int)(Math.random()*7-1);
 			}
 			if(myX < 375)
 			{
 				myX += (int)(Math.random()*7-1);
 			}
 			if(myX == 375)
 			{
 				myX += (int)(Math.random()*7-4);
 			}
 			if(myY > 390)
 			{
 				myY -= (int)(Math.random()*7-1);
 			}
 			if(myY < 390)
 			{
 				myY += (int)(Math.random()*7-1);
 			}
 			if(myY == 390)
 			{
 				myY += (int)(Math.random()*7-4);
 			}

 		}
 		if(dist(myX, myY, 375, 390) < 400)
 		{
 			if(myX > 375)
 			{
 				myX -= (int)(Math.random()*7-2);
 			}
 			if(myX < 375)
 			{
 				myX += (int)(Math.random()*7-2);
 			}
 			if(myX == 375)
 			{
 				myX += (int)(Math.random()*7-4);
 			}
 			if(myY > 390)
 			{
 				myY -= (int)(Math.random()*7-2);
 			}
 			if(myY < 390)
 			{
 				myY += (int)(Math.random()*7-2);
 			}
 			if(myY == 390)
 			{
 				myY += (int)(Math.random()*7-4);
 			}
 		}
 		if(dist(myX, myY, 375, 390) < 600)
 		{
 			if(myX > 375)
 			{
 				myX -= (int)(Math.random()*7-3);
 			}
 			if(myX < 375)
 			{
 				myX += (int)(Math.random()*7-3);
 			}
 			if(myX == 375)
 			{
 				myX += (int)(Math.random()*7-4);
 			}
 			if(myY > 390)
 			{
 				myY -= (int)(Math.random()*7-3);
 			}
 			if(myY < 390)
 			{
 				myY += (int)(Math.random()*7-3);
 			}
 			if(myY == 390)
 			{
 				myY += (int)(Math.random()*7-4);
 			}
 		}
 	}
 	void show()
 	{
 		fill(type);
 		stroke(0);
 		ellipse(myX, myY, 10, 10);
 	}
 }    
 void drawKirby()
 {
  fill(255,0,0);
  ellipse(340,410,50,25);
  ellipse(410,410,50,25);
  fill(#F0A7FF);
  stroke(0);
  ellipse(340,340,30,30);
  ellipse(410,340,30,30);
  stroke(#F0A7FF);
  ellipse(375,375,100,100);
  stroke(0);
  fill(0);
  ellipse(360,345,10,30);
  ellipse(390,345,10,30);
  fill(#240CC9);
  ellipse(360,345,8,28);
  ellipse(390,345,8,28);
  fill(0);
  ellipse(360,340,8,20);
  ellipse(390,340,8,20);
  fill(255);
  ellipse(360,335,8,10);
  ellipse(390,335,8,10);
}
void drawKirbyMouth()
{
  fill(#E82149);
  stroke(#F0A7FF);
  ellipse(375,390,50,55);
  fill(#FF4B6F);
  stroke(#E82149);
  ellipse(375,395,40,40);
}
