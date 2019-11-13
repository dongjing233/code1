int size, rows, cols;
void setup() {
  size(800, 800);
  size=width/15;
  rows=width/size;
  cols=height/size;
}


void draw() {
  noStroke();
  background(0);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      //int r=int(map(i, 0, 10, 0, 255));
      //fill(r, 0, 100);
      float d=dist(mouseX, mouseY, i*size+size/2, j*size+size/2);
      float s=map(d, 0, width, 5, size);
      int r=int(map(i, 0, 10, 0, 255));
      int b=int(map(j, 0, 10, 0, 255));
      fill(r, b, 100);
      ellipse(i*size+size/2, j*size+size/2, size/2+s, size/2+s);
    }
  }
}
