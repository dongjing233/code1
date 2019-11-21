float xPos, yPos;
int size=50;
int r, g, b;

void setup() {
  size(800, 800);
  xPos=(width/2);
  yPos=(height/2);
}

void draw() {
  //command+/
  //if (clacDist(xPos, yPos)<size/2) {
  //  background(219, 183, 129);
  //} else {
  //  background(119, 100, 129);
  //}
  //r=int(map(calcDisr(xPos, yPos ), 0, width, 100, 255));///round to int
  background(r,100,b);
  fill(r, g, b);
  r=int(map(mouseX, 0, width, 100, 255));///round to int
  b=int(map(mouseY, 0, width, 100, 255));
  g=int(map(mouseY, 0, width, 100, 255));
  ellipse(xPos, yPos, size, size);
  noStroke();
  println(clacDist(xPos, yPos));
}

float clacDist(float x, float y) {
  float dist = sqrt(sq(x-mouseX)+sq(y-mouseY));
  return dist;
}

///if my mouse is inside of my ellipse, then change my background color
