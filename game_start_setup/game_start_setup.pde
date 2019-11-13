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
  noStroke();
  background(255);
  fill(200, 230, 255);
  ellipse(width/2, height/2-60, 1400, 1400); 
  ellipse(width/2-50, height/2-30, 1400, 1400); 
  ellipse(width/2+50, height/2-30, 1400, 1400);
  ellipse(width/2, height/2-30, 1400, 1400);
  fill(180, 240, 255);
  ellipse(width/2, height/2-60, 1300, 1300); 
  ellipse(width/2-50, height/2-30, 1300, 1300); 
  ellipse(width/2+50, height/2-30, 1300, 1300);
  ellipse(width/2, height/2-30, 1300, 1300);
  fill(190, 220, 255);
  ellipse(width/2, height/2-60, 1200, 1200); 
  ellipse(width/2-50, height/2-30, 1200, 1200); 
  ellipse(width/2+50, height/2-30, 1200, 1200);
  ellipse(width/2, height/2-30, 1200, 1200);
  fill(190, 239, 247);
  ellipse(width/2, height/2-60, 1100, 1100); 
  ellipse(width/2-50, height/2-30, 1100, 1100); 
  ellipse(width/2+50, height/2-30, 1100, 1100);
  ellipse(width/2, height/2-30, 1100, 1100);
  fill(220, 239, 247);
  ellipse(width/2, height/2-60, 1000, 1000); 
  ellipse(width/2-50, height/2-30, 1000, 1000); 
  ellipse(width/2+50, height/2-30, 1000, 1000);
  ellipse(width/2, height/2-30, 1000, 1000);
  fill(230, 230, 237);
  ellipse(width/2, height/2-60, 900, 900); 
  ellipse(width/2-50, height/2-30, 900, 900); 
  ellipse(width/2+50, height/2-30, 900, 900);
  ellipse(width/2, height/2-30, 900, 900);
  fill(255, 220, 237);
  ellipse(width/2, height/2-60, 800, 800); 
  ellipse(width/2-50, height/2-30, 800, 800); 
  ellipse(width/2+50, height/2-30, 800, 800);
  ellipse(width/2, height/2-30, 800, 800);
  fill(200, 255, 237);
  ellipse(width/2, height/2-60, 700, 700); 
  ellipse(width/2-50, height/2-30, 700, 700); 
  ellipse(width/2+50, height/2-30, 700, 700);
  ellipse(width/2, height/2-30, 700, 700);
  fill(224, 223, 252);
  ellipse(width/2, height/2-60, 600, 600); 
  ellipse(width/2-50, height/2-30, 600, 600); 
  ellipse(width/2+50, height/2-30, 600, 600);
  ellipse(width/2, height/2-30, 600, 600);
  fill(219, 238, 252);
  ellipse(width/2, height/2-60, 500, 500); 
  ellipse(width/2-50, height/2-30, 500, 500); 
  ellipse(width/2+50, height/2-30, 500, 500);
  ellipse(width/2, height/2-30, 500, 500);
  fill(185, 229, 234);
  ellipse(width/2, height/2-60, 400, 400); 
  ellipse(width/2-50, height/2-30, 400, 400); 
  ellipse(width/2+50, height/2-30, 400, 400);
  ellipse(width/2, height/2-30, 400, 400);
  fill(168, 221, 246);
  ellipse(width/2, height/2-60, 300, 300); 
  ellipse(width/2-50, height/2-30, 300, 300); 
  ellipse(width/2+50, height/2-30, 300, 300);
  ellipse(width/2, height/2-30, 300, 300);
  fill(190, 235, 252);
  ellipse(width/2, height/2-60, 200, 200); 
  ellipse(width/2-50, height/2-30, 200, 200); 
  ellipse(width/2+50, height/2-30, 200, 200);
  ellipse(width/2, height/2-30, 200, 200);
  fill(150, 200, 250);
  ellipse(width/2, height/2-60, 100, 100); 
  ellipse(width/2-50, height/2-30, 100, 100); 
  ellipse(width/2+50, height/2-30, 100, 100);
  ellipse(width/2, height/2-30, 100, 100);
  fill(243, 217, 233);
  ellipse(width/2-50, height/2-30, 30, 30);
  ellipse(width/2+50, height/2-30, 30, 30);
  fill(255);
  ellipse(width/2-40, height/2-60, 10, 20);
  ellipse(width/2+40, height/2-60, 10, 20);
  ellipse(width/2, height/2-20, 20, 20);
  fill(100, 120, 120);
  text("HA! CLICK ME TO START!", 530, height/3);
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
  cursor();
  background(30, 150, 150);
  noStroke();
  fill(255);
  fill(179, 240, 200);
  ellipse(width/2, height*2/3-60, 1600, 1600); 
  ellipse(width/2-50, height*2/3-30, 1600, 1600); 
  ellipse(width/2+50, height*2/3-30, 1600, 1600);
  ellipse(width/2, height*2/3-30, 1600, 1600);
  fill(200, 240, 170);
  ellipse(width/2, height*2/3-60, 1500, 1500); 
  ellipse(width/2-50, height*2/3-30, 1500, 1500); 
  ellipse(width/2+50, height*2/3-30, 1500, 1500);
  ellipse(width/2, height*2/3-30, 1500, 1500);
  fill(200, 170, 170);
  ellipse(width/2, height*2/3-60, 1400, 1400); 
  ellipse(width/2-50, height*2/3-30, 1400, 1400); 
  ellipse(width/2+50, height*2/3-30, 1400, 1400);
  ellipse(width/2, height*2/3-30, 1400, 1400);
  fill(230, 240, 130);
  ellipse(width/2, height*2/3-60, 1300, 1300); 
  ellipse(width/2-50, height*2/3-30, 1300, 1300); 
  ellipse(width/2+50, height*2/3-30, 1300, 1300);
  ellipse(width/2, height*2/3-30, 1300, 1300);
  fill(190, 220, 255);
  ellipse(width/2, height*2/3-60, 1200, 1200); 
  ellipse(width/2-50, height*2/3-30, 1200, 1200); 
  ellipse(width/2+50, height*2/3-30, 1200, 1200);
  ellipse(width/2, height*2/3-30, 1200, 1200);
  fill(190, 239, 247);
  ellipse(width/2, height*2/3-60, 1100, 1100); 
  ellipse(width/2-50, height*2/3-30, 1100, 1100); 
  ellipse(width/2+50, height*2/3-30, 1100, 1100);
  ellipse(width/2, height*2/3-30, 1100, 1100);
  fill(220, 239, 247);
  ellipse(width/2, height*2/3-60, 1000, 1000); 
  ellipse(width/2-50, height*2/3-30, 1000, 1000); 
  ellipse(width/2+50, height*2/3-30, 1000, 1000);
  ellipse(width/2, height*2/3-30, 1000, 1000);
  fill(230, 230, 177);
  ellipse(width/2, height*2/3-60, 900, 900); 
  ellipse(width/2-50, height*2/3-30, 900, 900); 
  ellipse(width/2+50, height*2/3-30, 900, 900);
  ellipse(width/2, height*2/3-30, 900, 900);
  fill(237, 255, 180);
  ellipse(width/2, height*2/3-60, 800, 800); 
  ellipse(width/2-50, height*2/3-30, 800, 800); 
  ellipse(width/2+50, height*2/3-30, 800, 800);
  ellipse(width/2, height*2/3-30, 800, 800);
  fill(180, 255, 237);
  ellipse(width/2, height*2/3-60, 700, 700); 
  ellipse(width/2-50, height*2/3-30, 700, 700); 
  ellipse(width/2+50, height*2/3-30, 700, 700);
  ellipse(width/2, height*2/3-30, 700, 700);
  fill(224, 240, 252);
  ellipse(width/2, height*2/3-60, 600, 600); 
  ellipse(width/2-50, height*2/3-30, 600, 600); 
  ellipse(width/2+50, height*2/3-30, 600, 600);
  ellipse(width/2, height*2/3-30, 600, 600);
  fill(219, 250, 225);
  ellipse(width/2, height*2/3-60, 500, 500); 
  ellipse(width/2-50, height*2/3-30, 500, 500); 
  ellipse(width/2+50, height*2/3-30, 500, 500);
  ellipse(width/2, height*2/3-30, 500, 500);
  fill(185, 255, 149);
  ellipse(width/2, height*2/3-60, 400, 400); 
  ellipse(width/2-50, height*2/3-30, 400, 400); 
  ellipse(width/2+50, height*2/3-30, 400, 400);
  ellipse(width/2, height*2/3-30, 400, 400);
  fill(168, 255, 168);
  ellipse(width/2, height*2/3-60, 300, 300); 
  ellipse(width/2-50, height*2/3-30, 300, 300); 
  ellipse(width/2+50, height*2/3-30, 300, 300);
  ellipse(width/2, height*2/3-30, 300, 300);
  fill(190, 255, 180);
  ellipse(width/2, height*2/3-60, 200, 200); 
  ellipse(width/2-50, height*2/3-30, 200, 200); 
  ellipse(width/2+50, height*2/3-30, 200, 200);
  ellipse(width/2, height*2/3-30, 200, 200);
  fill(200, 255, 255);
  ellipse(width/2, height*2/3-60, 100, 100); 
  ellipse(width/2-50, height*2/3-30, 100, 100); 
  ellipse(width/2+50, height*2/3-30, 100, 100);
  ellipse(width/2, height*2/3-10, 100, 100);


  image(img2, width/2-100, height*2/3-140, 200, 200);
  fill(200, 200, 200);
  text("CLICK ME TO START AGAIN", width/2-80, height*2/3-170);
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
