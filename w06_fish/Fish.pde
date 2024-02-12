class Fish extends Animal{
  Fish(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }
  void display(){
    float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
    float yScaleFactor;
    xScaleFactor = float(xWidth)/75;
    yScaleFactor = float(yHeight)/35;
    stroke(255);
    fill(255,150,0);
    if(xSpeed > 0){
      beginShape();
      vertex(x,y+5*yScaleFactor);
      vertex(x,y+30*yScaleFactor);
      vertex(x+25*xScaleFactor,y+18*yScaleFactor);
      vertex(x+30*xScaleFactor,y+30*yScaleFactor);
      vertex(x+45*xScaleFactor,y+35*yScaleFactor);
      vertex(x+60*xScaleFactor,y+30*yScaleFactor);
      vertex(x+75*xScaleFactor,y+22*yScaleFactor);
      vertex(x+65*xScaleFactor,y+18*yScaleFactor);
      vertex(x+75*xScaleFactor,y+17*yScaleFactor);
      vertex(x+60*xScaleFactor,y+5*yScaleFactor);
      vertex(x+45*xScaleFactor,y);
      vertex(x+30*xScaleFactor,y+5*yScaleFactor);
      vertex(x+25*xScaleFactor,y+17*yScaleFactor);
      endShape(CLOSE);
    }
    else{
      beginShape();
      vertex(x+75*xScaleFactor,y+5*yScaleFactor);
      vertex(x+75*xScaleFactor,y+30*yScaleFactor);
      vertex(x+50*xScaleFactor,y+18*yScaleFactor);
      vertex(x+45*xScaleFactor,y+30*yScaleFactor);
      vertex(x+30*xScaleFactor,y+35*yScaleFactor);
      vertex(x+15*xScaleFactor,y+30*yScaleFactor);
      vertex(x,y+22*yScaleFactor);
      vertex(x+10*xScaleFactor,y+18*yScaleFactor);
      vertex(x,y+17*yScaleFactor);
      vertex(x+15*xScaleFactor,y+5*yScaleFactor);
      vertex(x+30*xScaleFactor,y);
      vertex(x+45*xScaleFactor,y+5*yScaleFactor);
      vertex(x+50*xScaleFactor,y+17*yScaleFactor);
      endShape(CLOSE);
    }
  }
  void move(){
    x += xSpeed; //moves in a sine wave
    y += ySpeed * sin(radians(frameCount));
    if(x + xWidth > tank.tankX + tank.tankW){
      xSpeed *= -1;
      x = tank.tankX + tank.tankW - xWidth;
    }
    if(x < tank.tankX){
      xSpeed *= -1;
      x = tank.tankX;
    }
    if(y + yHeight > tank.tankY + tank.tankH - tank.floorH){
      ySpeed *= -1;
      y = tank.tankY + tank.tankH - tank.floorH - yHeight;
    }
    if(y < tank.tankY){
      ySpeed *= -1;
      y = tank.tankY;
    }
  }
}
