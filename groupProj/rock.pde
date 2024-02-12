class rock extends Animal {
 rock(int xx, int yy) {
  super(xx, yy);
  ySpeed = 2; 
  cc = #636363;
 }
 void move() {
    if (x+xWidth>tankX+tankW || x <= tankX) {
        xSpeed*= -1;
     }
     if (y+yHeight >= tankY + tankH - floorH) {
         ySpeed*= 0;
         xSpeed = 0;
      }
     x+= xSpeed;
     y+= ySpeed;
  }
}
