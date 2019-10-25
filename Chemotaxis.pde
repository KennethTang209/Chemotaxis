 Bacteria[] colony;   
 void setup()   
 {     
 	size(750, 750);
 	frameRate(30);
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
 		stroke(type);
 		beginShape();
 		vertex(myX - 7, myY);
 		vertex(myX + 7, myY);
 		vertex(myX - 5, myY + 7);
 		vertex(myX, myY - 7);
 		vertex(myX + 5, myY + 7);
 		endShape();
 	}
 }    
 void drawKirby()
 {
  fill(255,0,0);
  ellipse(340,410,50,25);
  ellipse(410,410,50,25);
  fill(240, 167, 255);
  stroke(0);
  ellipse(340,340,30,30);
  ellipse(410,340,30,30);
  stroke(240, 167, 255);
  ellipse(375,375,100,100);
  stroke(0);
  fill(0);
  ellipse(360,345,10,30);
  ellipse(390,345,10,30);
  fill(36, 12, 201);
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
  fill(232, 33, 73);
  stroke(240, 167, 255);
  ellipse(375,390,50,55);
  fill(255, 75, 111);
  stroke(232, 33, 73);
  ellipse(375,395,40,40);
}
