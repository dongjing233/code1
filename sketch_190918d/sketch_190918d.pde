boolean circleClicked = false;
float a, b;
int size=100;

void setup() {
  size(800, 800);
  a=(width/2);
  b=(height/2);
}

void draw() {

  float d = dist(mouseX, mouseY, a, b);


  if (d<50) {
    //println("inside circle");
    fill(250, 250, 250);
  } else {
    fill(0, 0, 0);
  }
if(circleClicked){
  background(0,255,0);
}else{
  background(255,0,0);
}
  println(circleClicked);
  ellipse(a, b, size, size);
}

void mousePressed(){
  float d = dist(mouseX, mouseY, a, b);
    if (d<size/2) {
circleClicked=!circleClicked;
  }
}
