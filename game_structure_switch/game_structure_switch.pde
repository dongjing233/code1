int screen=0;


void setup(){
  size(800,800);
  noStroke();
}

void draw(){
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
  background(15,100,100);
  fill(255);
  text("click here to end the game",320,height*2/3-100);
  ellipse(width/2, height*2/3,100,100);
}

void endScreen(){
  background(30,150,150);
  fill(255);
  text("GAME OVER",width/2-30,height/2);
  ellipse(width/2, height*2/3,100,100);
  fill(0);
  text("START AGAIN",width/2-35, height*2/3);
}
//game screen();

//end screen():

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
