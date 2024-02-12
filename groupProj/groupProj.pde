Tank t;
Fish f0;
Crab c0;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  t.addFish(width/2,height/2);
  t.addCrab(width/2,tankY+tankH-(floorH/2));
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
  textAlign(RIGHT,TOP);
  textSize(20);
  fill(0);
  text("Click in the water for fish/animal\nClick on the sand for crabs",width,0);
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}
