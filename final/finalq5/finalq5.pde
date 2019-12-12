int sceneNumber = 0; 
void setup() {
  size(600, 600);
}
void draw() {
  switch(sceneNumber) {
  case 0:
    scene0();
    break;
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break;
  case 3:
    scene3();
  }

  if (sceneNumber < 0) {
    sceneNumber = 3;
  }

  if (sceneNumber > 3) {
    sceneNumber = 0;
  }
  fill(255); 
  text("the scene number is: " + str(sceneNumber), 100, 100);
}


void scene0() {
  background(255, 0, 255);
}

void scene1() {
  background(0, 0, 255);
}

void scene2() {
  background(0, 255, 255);
}

void scene3() {
  background(255, 0, 0);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode==LEFT) {
      sceneNumber--;
    }
    if (keyCode==RIGHT) {
      sceneNumber++;
    }
  }
}
