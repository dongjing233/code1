String[]string1={"Hello", "world", "!"};
float q;
int r;

void setup() {
  size(800, 800);
  r=int(random(0, 2));
  q=random(0, 1);
  if (q<0.3) {
    text(string1[r], width/2, height/4);
  }
  if (0.3<q&&q<0.5) {
    text(string1[r], width/2, height/4);
  }
  if (0.5<q&&q<0.8) {
    text(string1[r], width/2, height/4);
  }
  if (0.8<q&&q<1) {
    text(string1[r], width/2, height/4);
  }
}  


void draw() {
  color(255);
  text(string1[r], width/2, height/4);
}
