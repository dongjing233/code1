int size, x, y, z;

void setup() {
  size(600, 600);
  width=800;
  height=800;
  size=100;
  background(255);
}



void draw() {
  stroke(0);
  for (int x=0; x<width; x+=size) {
    for (int y=0; y<height; y+=size) {
      for (int z=0; z<100; z+=size) {
        line(x+z+size/2, 0, width, 1.2*height);
        line(0, y+z+size/2, width, 1.2*height);
        //line(x+z+size/2, 0, -width, 1.2*height);
        //line(0, y+z+size/2, width, -0.8*height);
        line(y-z, 1.2*height, width-2.6*size, -0.5*height );
      }
    }
  }
}
