class crabAlbert extends Animal{ //Albert's animals
crabAlbert(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }

  void move(){
  x += xSpeed;
  if (x <= 0 || x+xWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
  }
  
  
  void display(){
  fill(255,165,0);
    rect(x,t.tankY+t.tankH-t.floorH,xWidth,yHeight);
  
  }


}
