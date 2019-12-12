Invader myInvader;
Player myPlayer;
Shot myShot;
ArrayList <Shot> myShots = new ArrayList<Shot>();
Invader []myInvaders=new Invader[10];
int num=10;
int time;
int a, b;


void setup() {
  size(800, 800); 
  noStroke(); 
  myInvader=new Invader();
  for (int i=0; i<num; i++) {
    myInvaders[i]=new Invader();
  };
  myPlayer=new Player();
  myShot=new Shot();
}

void draw() {
  time++;
  background(255); 
  for (int i = 0; i<num; i++) {
    myInvaders[i].display();
    myInvaders[i].move();
    myShot.drawShot();
    myPlayer.display();
    myPlayer.move();
    fill(0);
    
     text("press SPACE to attack", 100, 20);


    text("score:"+a, 570, 20);
    if (keyPressed) {
      if (key == ' ') {
        if (dist(myPlayer.xPos, myPlayer.yPos, myInvaders[i].xPos, myInvaders[i].yPos)<50) {
          println("touched"+i);
          a=a+1;
        }
      }
    }

    fill(0);
    text("time:"+time/60, 500, 20);



    //text("shot:"+b, 640, 20);
    //if (dist(myShot.x, myShot.y, myInvaders[i].xPos, myInvaders[i].yPos)<10) {
    //  println("Shotted");
    //  b=b+1;
    //}
  }
}
