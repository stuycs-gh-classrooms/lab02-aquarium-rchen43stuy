class Goldfish extends Animal {
  float fsize;
  boolean perished;
  boolean STOP;
  float ratio;
  boolean alive;
  float hunger;
  Goldfish(int x, int y) {
    super(x, y);
    fsize = xWidth * yHeight * PI;
    ratio = yHeight/xWidth;
  }
  Goldfish(int x, int y, int z, int w) {
    super(x, y, z, w);
    fsize = xWidth * yHeight * PI;
    ratio = yHeight/xWidth;
  }
  void display() {
    if(!STOP){
    hunger-= .1;
    //xywh
    if (perished) {
      ySpeed = 1;
      xSpeed = 0;
      fill(#808080);
      ellipse(x, y, xWidth, yHeight);

     if (y >= height - t.floorH + random(00,20)) {
    ySpeed = 0;
  }
    }
    else if (alive) {
      fill(250, 200, 50);
      ellipse(x, y, xWidth, yHeight);
      if (xSpeed<0) {
        triangle(x + xWidth/2, y, x + xWidth, y + yHeight/2, x + xWidth, y - yHeight/2);
        fill(#000000);
        circle(x - xWidth /4, y - yHeight/5, sqrt(log(fsize)));
      }
      if (xSpeed>0) {
        triangle(x - xWidth/2, y, x - xWidth, y + yHeight/2, x - xWidth, y - yHeight/2);
        fill(#000000);
        circle(x + xWidth /4, y - yHeight/5, sqrt(log(fsize)));
      }
      if (hunger<0) {
        perish();
      }
    }
    }}
  void checkEat(Goldfish other) {
    if (fsize > other.fsize && collisionCheck(other) && other.alive) {
      other.die();
      fsize += other.fsize;
      hunger += log(other.fsize);
      xWidth = int(sqrt(fsize/ratio/PI));
      yHeight = int(sqrt(fsize/ratio/PI)*ratio);
    }
  }
  boolean collisionCheck(Goldfish other) {
    if (other == this) {
      return false;
    } else {
      return(dist(this.x, this.y, other.x, other.y)
        <= (this.xWidth/2 + other.xWidth/2));
    }
  }//collisionCheck
  void die() {
    alive = !alive;
  }
  void perish() {
    alive = !alive;
    perished = true;
  }
}
