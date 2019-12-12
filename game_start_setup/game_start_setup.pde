int screen=0;
Cloud myCloud;
Cloud[] myClouds=new Cloud[15];
int num=15;
Player myPlayer;
import org.openkinect.freenect.*;
import org.openkinect.processing.*;
KinectTracker tracker;
Kinect kinect;
float x, y;
int star, rows, cols, m;
PImage img;
PImage img2;
import processing.sound.*;
SoundFile file;
int time;


void setup() {
  size(1200, 900);
  star=width/40;
  rows=height/star;
  cols=width/star;
  myCloud=new Cloud();
  kinect = new Kinect(this);
  tracker = new KinectTracker();
  img = loadImage("rocket.png");
  img2 = loadImage("cry.png");
  frameRate(60);
  myPlayer=new Player(width/2, height/2);
  for (int i=0; i<num; i++) {
    myClouds[i]=new Cloud();
  };
  file = new SoundFile(this, "gameover.wav");
}

void draw() {
  tracker.track();
  tracker.display();
  PVector v1 = tracker.getPos();
  myPlayer.xPos=map(v1.x, 0, 1200, 0, width*2);
  myPlayer.yPos=map(v1.y, 0, 900, 0, height*2);
  myPlayer.drawPlayer();
  println(myPlayer.xPos);
  println(myPlayer.yPos);

  switch(screen) {
  case 0:
    startScreen();
    break;
  case 1:
    gameScreen();
    break;
  case 2:
    endScreen();
    break;
  }
}

void startScreen() {

}

void gameScreen() {
  time++;
  noCursor();
  background(200, 230, 230); 
  noStroke();
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      float d=dist(myPlayer.xPos, myPlayer.yPos, i*star+star/2, j*star+star/2);
      float s=map(d, 0, width, 5, star);
      fill(255, 255, 100);
      ellipse(i*star+star/2, j*star+star/2, star/2-s, star/2-s);
    }
  }
  fill(255);
  noStroke();
  myPlayer.drawPlayer();
  for (int i = 0; i<num; i++) {
    myClouds[i].drawCloud(); 
    myClouds[i].moveCloud();
    if (dist(myPlayer.xPos, myPlayer.yPos, myClouds[i].xPos, myClouds[i].yPos)<50) {
      println("touched"+i);
      screen=2;
      file.play();
    }
    text("time:"+time/60, 1000, 20);
  }
}

void endScreen() {
}


void mousePressed() {
  if (screen==0) {
    if (dist(width/2, height/2, mouseX, mouseY)<100) {
      println("buttonClicked");
      screen=1;
      time=0;
    }
  }

  if (screen==2) {
    if (dist(width/2, height*2/3, mouseX, mouseY)<50) {
      println("buttonClicked");
      screen=0;
      for (int i=0; i<num; i++) {
        myClouds[i]=new Cloud();
        myClouds[i]=new Cloud();
      }
    }
  }
}
