ArrayList<Bubble> bubbleVariable;


void setup() {
  size(600, 600);
  bubbleVariable=new ArrayList<Bubble>();
  for (int i=0; i<10; i++) {
    bubbleVariable.add(new Bubble());
  }
}

void draw() {
  for (int i=0; i<10; i++) {

    Bubble bubbleVariable1=bubbleVariable.get(i);
    bubbleVariable1.show();
  }
}

  class Bubble {
    float x, y;

    Bubble() {
      x=random(width);
      y=random(height);
    }

    void show() {
      ellipse(x, y, 20, 20);
    }
  }
