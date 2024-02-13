class Fish extends Animal{ //My animal
  Fish(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }
  void display(){
    pushMatrix();
    float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
    float yScaleFactor;
    xScaleFactor = float(xWidth)/75;
    yScaleFactor = float(yHeight)/35;
    stroke(255);
    fill(255,150,0);
    translate(x,y);
    if(xSpeed < 0){
      scale(-1.0,1.0);
    }
      beginShape();
      vertex(0,5*yScaleFactor);
      vertex(0,30*yScaleFactor);
      vertex(25*xScaleFactor,18*yScaleFactor);
      vertex(30*xScaleFactor,30*yScaleFactor);
      vertex(45*xScaleFactor,35*yScaleFactor);
      vertex(60*xScaleFactor,30*yScaleFactor);
      vertex(75*xScaleFactor,22*yScaleFactor);
      vertex(65*xScaleFactor,18*yScaleFactor);
      vertex(75*xScaleFactor,17*yScaleFactor);
      vertex(60*xScaleFactor,5*yScaleFactor);
      vertex(45*xScaleFactor,0);
      vertex(30*xScaleFactor,5*yScaleFactor);
      vertex(25*xScaleFactor,17*yScaleFactor);
      endShape(CLOSE);
      popMatrix();
  }
  void move(){
    x += xSpeed; //moves in a sine wave
    y += ySpeed * sin(radians(frameCount));
    if(x + xWidth > tank.tankX + tank.tankW && xSpeed > 0){
      xSpeed *= -1;
      x = tank.tankX + tank.tankW;
    }
    if(x - xWidth < tank.tankX && xSpeed < 0){
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
