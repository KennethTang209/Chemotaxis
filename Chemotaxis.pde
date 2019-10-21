 Bacteria[] colony;   
 void setup()   
 {     
 	size(500, 500);
 	background(127);
 	stroke(1);
 	frameRate(1);
 	colony = new Bacteria[50];   
 	
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
 	int myX, myY, type;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		type = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}  
 	void move()
 	{
 		int direction = (int)(Math.random()*4);
  		if(direction == 0)
  		{
    		myX += 20;
  		}
  		else if(direction == 1)
  		{
    		myX -= 20;
  		}
  		else if(direction == 2)
  		{
    		myY += 20;
  		}
  		else 
  		{
    		myY -= 20;
  		}
 	}
 	void show()
 	{
 		fill(type);
 		ellipse(myX, myY, 20, 20);
 	}
 }    