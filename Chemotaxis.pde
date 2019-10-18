Bacteria[] colony;
 void setup()   
 {     
  size(500, 500);
  textAlign(CENTER);
  colony = new Bacteria[7];
  for(int i = 0; i < colony.length; i++)
   {
    colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
  background(127);
  for(int i = 0; i < colony.length; i++)
  {
   colony[i].move();
   colony[i].show();
  }
 }  
 class Bacteria    
 {
  int myX, myY, myColor;
  Bacteria()
  {
   myX = myY = 250;
   myColor = color(0, 0, 255);
  }
  void move()
  {
   myX = myX + (int)(Math.random() * 7) - 3;
   myY = myY + (int)(Math.random() * 7) - 3;
  }
  void show()
  {
   fill(myColor);
   ellipse(myX, myY, 25, 25);
  }
 }    
