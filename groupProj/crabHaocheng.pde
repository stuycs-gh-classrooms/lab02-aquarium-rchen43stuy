class crabHaocheng extends Animal {
  crabHaocheng(int xx, int yy) {
   super(xx, yy); 
   cc=color(255, 0,0);
   y = tankY + tankH - floorH - yHeight;
   
   
  }
  void move() {
    if (frameCount%2==0){
    if (x+xWidth>tankX+tankW || x <= tankX) {
        xSpeed*= -1;
     }
     x+= xSpeed;
  }
  }
}
