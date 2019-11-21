void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, 255, 0, width/5);
      float g = map(j, 0, 255, 0, height/5);
      stroke(r, g, 175);
      point(i, j);
    }
  }
}
