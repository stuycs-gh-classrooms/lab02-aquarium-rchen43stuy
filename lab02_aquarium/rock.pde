class rock extends Animal { //Haocheng's "animals"
 rock(int xx, int yy) { //rocks must be petted to stay alive
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
  void display() {
    fill(cc);
    noStroke();
    rect(x, y, xWidth, yHeight);
  }
}
