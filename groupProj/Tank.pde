class Tank{
  int tankX;
  int tankY;
  int floorH;
  int tankW;
  int tankH;
  ArrayList<Animal> animals;
  Tank(int tx,int ty,int tw,int th,int fh){
    tankX = tx;
    tankY = ty;
    tankW = tw;
    tankH = th;
    floorH = fh;
    animals = new ArrayList<Animal>();
  }
  void display(){
    strokeWeight(0);
    fill(0,255,255);
    rect(tankX,tankY,tankW,tankH);
    fill(194,178,128);
    rect(tankX,tankY+tankH,tankW,-floorH);
    for(int i = 0; i < animals.size(); i++){
      animals.get(i).display();
    }
  }
  void moveAnimals(){
    for(int i = 0; i < animals.size(); i++){
      animals.get(i).move();
    }
  }
  void addAnimal(int x, int y){
    float xSpeed = random(-2,2);
    float ySpeed = random(-2,2);
    int xSize = 50 + int(random(-10,10));
    int ySize = 25 + int(random(-5,5));
    int randomRoll = int(random(0,2));
    Animal animal;
    if(y < tankY + tankH - floorH){
      if(randomRoll == 0){
        animal = new Animal(x,y,xSpeed,ySpeed,xSize,ySize,this);
      }
      else{
        animal = new Fish(x,y,xSpeed,ySpeed,xSize,ySize,this);
      }
    }
    else{
      animal = new Crab(x,y,xSpeed,ySpeed,xSize,ySize,this);
    }
    animals.add(animal); 
  }
    void addFish(int x, int y){
    float xSpeed = random(-2,2);
    float ySpeed = random(-2,2);
    int xSize = 50 + int(random(-10,10));
    int ySize = 25 + int(random(-5,5));
    Animal animal = new Fish(x,y,xSpeed,ySpeed,xSize,ySize,this);
    animals.add(animal);
  }
  void addCrab(int x, int y){
    float xSpeed = random(-2,2);
    float ySpeed = random(-2,2);
    int xSize = 50 + int(random(-10,10));
    int ySize = 25 + int(random(-5,5));
    Animal animal = new Crab(x,y,xSpeed,ySpeed,xSize,ySize,this);
    animals.add(animal);
  }
}
