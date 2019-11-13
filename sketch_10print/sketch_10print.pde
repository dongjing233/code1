float x=0, y=0;
float c=20;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  stroke(255);
  if (random(0, 1)<0.3) {
    line(x, y, x+c, y+c);
  } else if(random(0, 1)>0.7){
    line(x, y+c, x+c, y);
  }else if(random(0, 1)>0.7){
    line(x,y,x+c,y);
  }
  x=x+c;
  if (x>width) {
    x=0;
    y=y+c;
  }
}





///reference:https://www.youtube.com/watch?v=bEyTZ5ZZxZs
