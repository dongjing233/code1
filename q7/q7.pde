void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      ellipse(i * 60+30, j * 60+30, 50, 50);
    }
  }
}
