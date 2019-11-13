float a, b, c, d;
int size=80, R, G, B;


void setup() {
  size(800, 800);
  a=(width/3);
  b=(width*2/3);
  c=(height/3);
  d=(height*2/3);
  background(R/1.2, G/1.2, B/1.2);
}

void draw() {
  
  
  if (dist1(a, b)<size/2) {
    background(255, 255, 255, 90);
  } else if (dist2(a)<size/2) {
    background(255, 255, 255, 90);
  } else if (dist3(a, b)<size/2) {
    background(255, 255, 255, 90);
  } else if (dist4(b)<size/2) {
    background(255, 255, 255, 90);
  } else {
    background(R/1.2, G/1.2, B/1.2);
  }
  
  stroke(mouseX/4, mouseY/4, mouseY/4);
  boolean k= (dist1(a, b)-40>0); 
  if (k) { 
    line(380, 380, 420, 420); 
    line(420, 380, 380, 420);
  } 
  if (!k) { 
    ellipse(400, 400, 100, 100);
  } 
  k = true; 

  boolean j= (dist2(a)-40<0); 
  if (j) { 
    ellipse(400, 400, 100, 100);
  } 

  boolean h= (dist3(a, b)-40<0); 
  if (h) { 
    ellipse(400, 400, 100, 100);
  } 

  boolean l= (dist4(b)-40<0); 
  if (l) { 
    ellipse(400, 400, 100, 100);
  } 


  noStroke();
  fill(R, G, B);
  R=int(map(mouseX, 0, width, 100, 255));
  G=int(map(mouseY, 0, width, 100, 255));
  B=int(map(mouseY, 0, width, 50, 255));
  ellipse(a, a, size, size);
  fill(R, G, B);
  R=int(map(mouseY, 0, width, 50, 255));
  G=int(map(mouseX, 0, width, 100, 255));
  B=int(map(mouseY, 0, width, 50, 255));
  ellipse(a, b, size, size);
  fill(R, G, B);
  R=int(map(mouseY, 0, width, 50, 255));
  G=int(map(mouseX, 0, width, 50, 255));
  B=int(map(mouseX, 0, width, 100, 255));
  ellipse(b, a, size, size);
  fill(R, G, B);
  R=int(map(mouseX, 0, width, 100, 255));
  G=int(map(mouseX, 0, width, 50, 255));
  B=int(map(mouseX, 0, width, 50, 255));
  ellipse(b, b, size, size);

  fill(R, G, B);
  R=int(map(mouseX, 0, width, 100, 255));
  G=int(map(mouseX, 0, width, 50, 255));
  B=int(map(mouseX, 0, width, 100, 255));
 
  float q=random(30,60);
  fill(R/2, G/2, B/2);
  ellipse(mouseX, mouseY, q, q);

  fill(R, G, B);
  int x1 = 100;
  int y1 = 100;
  int x2 = 100;
  int y2 = 700;

  for (int i = 0; i <= 10; i++) {
    stroke(mouseX/4, mouseY/4, mouseY/4);
    float x = lerp(x1, x2, i/10.0);
    float y = lerp(y1, y2, i/10.0);
    strokeWeight(50);
    point(x, y);


    float m = lerp(x1, y2, i/10.0);
    float n = lerp(y2, y2, i/10.0);
    point(m, n);

    float o = lerp(x1, y2, i/10.0);
    float p = lerp(x2, x2, i/10.0);
    point(o, p);

    float r = lerp(y2, y2, i/10.0);
    float s = lerp(y2, x2, i/10.0);
    point(r, s);
  }
  


}


float dist1(float a, float b) {
  float dist1 = sqrt(sq(a-mouseX)+sq(b-mouseY));
  return dist1;
}

float dist2(float a) {
  float dist2=sqrt(sq(a-mouseX)+sq(a-mouseY));
  return dist2;
}

float dist3(float a, float b) {
  float dist3=sqrt(sq(b-mouseX)+sq(a-mouseY));
  return dist3;
}

float dist4(float b) {
  float dist2=sqrt(sq(b-mouseX)+sq(b-mouseY));
  return dist2;
}
