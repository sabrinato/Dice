int sum = 0;
void setup()
  {
    size (400,400);
    noLoop();
    background(255,192,203);
  }  
  Die bob;
void draw()
  {
    background(255,192,203);
    for (int i = 100; i < 400; i+= 100){
      for (int j = 100; j < 400; j+= 100) {
        bob = new Die(i,j);
        bob.show();
        sum = sum + bob.value;
      }
    }
    text("roll =" + sum, 10, 390);
  }
void mousePressed()
  {
      redraw();
      sum = 0;
      
  }
class Die //models one single dice cube
  {
      int value;
      int myX;
      int myY;
      
    Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
    void roll()
      {
          value = (int)(Math.random()*6)+1;
          
      }
    void show()
      {
          ellipse(myX,myY, 30,30);
          fill(0);
          text(value, myX, myY);
          fill(255);
      }
  }
