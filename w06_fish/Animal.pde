class Animal{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int xWidth;
  int yHeight;
  Tank tank;
  Animal(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    x = xpos;
    y = ypos;
    xSpeed = xs;
    ySpeed = ys;
    xWidth = xW;
    yHeight = yH;
    tank = t;
  }
  void display(){
    fill(255,0,255);
    rect(x,y,xWidth,yHeight);
  }
  void move(){
    x += xSpeed;
    y += ySpeed;
    if(x + xWidth > tank.tankX + tank.tankW){
      xSpeed *= -1;
      x = tank.tankX + tank.tankW - xWidth;
    }
    if(x < tank.tankX){
      xSpeed *= -1;
      x = tank.tankX;
    }
    if(y + yHeight > tank.tankY + tank.tankH){
      ySpeed *= -1;
      y = tank.tankY + tank.tankH - yHeight;
    }
    if(y < tank.tankY){
      ySpeed *= -1;
      y = tank.tankY;
    }
  }
}
