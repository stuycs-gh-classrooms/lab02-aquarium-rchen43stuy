class clownFish extends Animal{ //Albert's animals
clownFish(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }

void move(){
  this.x += xSpeed/2;
  this.y += ySpeed/2;
  if (x <= 0 || x+xWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
  if (y <= tankY || y+yHeight >=tankY+tankH-floorH){ySpeed = ySpeed * -1;}
  pathfind();
}
void pathfind(){
  if(closestFood().x > this.x){
    if(xSpeed < 2){
      xSpeed += .1;
    }
  }
  if(closestFood().x < this.x){
    if(xSpeed > -2){
      xSpeed -= .1;
    }
  }
  if(closestFood().y > this.y){
    if(ySpeed < 2){
      ySpeed += .1;
    }
  }
  if(closestFood().y < this.y){
    if(ySpeed > -2){
      ySpeed -= .1;
    }
  }
}
FishFood closestFood(){
  FishFood tempFood; //temporary food to compare to
  tempFood = new FishFood(100000000,100000000,5,5,5,5,tank);
  FishFood minFood = tempFood;
  for(int i = 0; i < tank.animals.size(); i++){
    Animal currentAnimal = tank.animals.get(i);
    if(currentAnimal instanceof FishFood){
      if(dist(currentAnimal.x,currentAnimal.y,this.x,this.y) < dist(minFood.x,minFood.y,this.x,this.y)){
        minFood = (FishFood) currentAnimal;
      }
    }
  }
  if(minFood == tempFood){
    minFood = new FishFood(int(this.x),int(this.y),5,5,5,5,tank);
  }
  return minFood;
}
void display(){
  fill(255,165,0);
  rect(x,y,xWidth,yHeight);
  fill(255,255,255);
  rect(x + xWidth/2, y, xWidth/3, yHeight);

}



}
