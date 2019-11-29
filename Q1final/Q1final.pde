PVector pos, v, a; 

void setup() {
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  v=new PVector(0, random(-10, 10));
  a=new PVector(0, .1);
  smooth();
}

void draw() {
  pos.add(v);
  v.add(a);
  background(0); 

  ellipse(pos.x, pos.y, 25, 25); 

  if (pos.y >= height) {
    pos.y=0;
    v.y=random(-10, 10);
    a.y=0.1;
  }
  //if (pos.y<=0) {

  //  }
}
