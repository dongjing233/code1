Cloud myCloud;
Cloud[] myClouds=new Cloud[15];
int num=15;
Player myPlayer;//naming the instance from our template
Player myPlayers=new Player();
int screen=0;

void setup() {
  size(1200, 900);
  myCloud=new Cloud();
  myPlayer=new Player();
  myPlayer.move();
  myPlayer.drawPlayer();

  for (int i=0; i<num; i++) {
    myClouds[i]=new Cloud();
  };
}

void draw() {
    switch(screen){
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

void startScreen(){
  background(255);
  text("HA! Press the button to start",320,height/3);
  fill(102,200,200);
  ellipse(width/2, height/2,100,100);
}

void gameScreen(){
 background(250); 
  myPlayer.drawCloud();
  myPlayer.move();
  for (int i = 0; i<num; i++) {
    myClouds[i].drawCloud(); 
    myClouds[i].moveCloud();
    if (dist(myPlayer.xPos, myPlayer.yPos, myClouds[i].xPos, myClouds[i].yPos)<25) {
      println("collision detected"+i);
      screen=2;
    }
}
}

void endScreen(){
  background(30,150,150);
  fill(255);
  text("GAME OVER",width/2-30,height/2);
  ellipse(width/2, height*2/3,100,100);
  fill(0);
  text("START AGAIN",width/2-35, height*2/3);
}

void mousePressed(){
  //first button
  if(screen==0){
  if(dist(width/2,height/2,mouseX, mouseY)<50){
    println("buttonClicked");
    screen=1;
  }
  }
  
  //second button
  if(screen==1){
    if(dist(width/2, height*2/3,mouseX, mouseY)<50){
    println("buttonClicked");
    screen=2;
  }
  }

}
