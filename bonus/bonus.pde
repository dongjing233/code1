Invader myInvader;
Invader []myInvaders=new Invader[5];
int num=5;

void setup() {
size(600, 600); 
noStroke(); 
  myInvader=new Invader();
  //for (int i=0; i<20; i++) {
  //  myInvaders[i]=new Invader();
  //};
}

void draw() {
background(255); 
  myInvader.display();
  myInvader.move();
}
