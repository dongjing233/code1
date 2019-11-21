int yPosition = height/2;
void setup() {
  size(600, 600);
}

void draw() {
  ellipse(width/2, yPosition, 100, 100);
  yPosition+=20;
  if (yPosition > height) {
    yPosition = 0;
  } else {
    yPosition+=1;
  }
}
