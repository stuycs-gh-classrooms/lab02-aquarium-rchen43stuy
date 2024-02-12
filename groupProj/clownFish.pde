class clownFish extends Animal{
clownFish(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }

void move(){

this.x += xSpeed/2;
this.y += ySpeed/2;
if (x == 0 || x+xWidth == tankX+tankW){xSpeed = xSpeed * -1;}
if (y == tankY || y+yHeight ==tankY+tankH-floorH){ySpeed = ySpeed * -1;}
  

}


void display(){
fill(255,165,0);
rect(x,y,xWidth,yHeight);
fill(255,255,255);
rect(x + xWidth/2, y, xWidth/3, yHeight);

}




}
