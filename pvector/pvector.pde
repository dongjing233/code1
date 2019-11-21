PVector pos, v, a, oriV;
//reset velovity
int size=100;

void setup() {
  size(800, 800);
  pos=new PVector(width/2, height/2);
  v=new PVector(random(-10, 10), random(-10, 10));
  a=new PVector(.1, .1);
  oriV=new PVector(random(-10, 10), random(-10, 10));
}

void draw() {
  background(0);
  pos.add(v);
  v.add(a);
  noStroke();
  ellipse(pos.x, pos.y, size, size);
  if (pos.x>width-50 ||pos.x<50) {
    v.x=-v.x;
    a.x=0;
  }
  if (pos.y>width-50||pos.y<50) {
    v.y=-v.y;
    a.y=0;
  }
}
