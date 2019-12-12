ArrayList <Shape> shapes = new ArrayList<Shape>(); 
//shapes name; <> type of things we are going to store

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  for (int i = 0; i<shapes.size(); i++) {
    Shape s =   shapes.get(i); 
    s.display(i); 
    //array can't assign a fixed index
    //.get--the current index for our objects
  }
}



void mousePressed() {
  shapes.add(new Shape(mouseX, mouseY));
}

class Shape {
  float x, y; 
  float size; 

  Shape(float _x, float _y) {
    x = _x; 
    y = _y;
    size= random(40, 100);
  }

  void display(float _size) {
    size = _size; 
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3);
  }
}
