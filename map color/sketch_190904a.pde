int mta=50;
int moveX=0;
int moveY=0;
String hello="Hello";
float x=0.5;

void setup() {
  background(0);
  size(800,800);
  frameRate(10);
}

void draw() {
  noStroke();
  background(0);
  float r= random(50,400);
  ellipse(mouseX,mouseY,r,r);
  ellipse(moveX,moveY,mta,mta);
  moveX=moveX+1;
  moveY=moveY+1;
  
  if(mousePressed){
   fill(224,184,193);
 }else{
 fill(182,128,193);
 }

  println(r);
  mta=mta+1;
  
  textSize(mouseX);
  text(hello,100,100);

}
