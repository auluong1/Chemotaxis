Bacteria[] colony;
 void setup()   
 {     
  size(500, 500);
  textAlign(CENTER);
  colony = new Bacteria[9001];
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
   if(mouseX > myX)
   {
    myX = myX + (int)(Math.random() * 7) - 1;
   } else {
    myX = myX + (int)(Math.random() * 7) - 4;
   }
   if(mouseY > myY)
   {
   myY = myY + (int)(Math.random() * 7) - 1;
   } else {
   myY = myY + (int)(Math.random() * 7) - 4;
   }
  }
  void show()
  {
   fill(myColor);
   ellipse(myX, myY, 25, 25);
  }
 }    
