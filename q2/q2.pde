//add a conditional that makes the ellipse grow only until the diameter
//reaches the width of the canvas, then makes it shrink until reaching 0
//then growing again, back and forth.
float d = 100;
float incr = 5;

boolean shrink=false; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);

  if (d==600) {
    shrink=true;
  }
  if (d==0) {
    shrink=false;
  }
  if (shrink==true){
    d -= incr;  
  }
  if (shrink==false){
    d += incr;
  }
}
