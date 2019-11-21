

void setup() {
  int counter;
  float[] floatArray = new float[100];
}
void draw() {
  if (0 < counter < 60) {
    counter++;
  } else {
    counter = 0;
  }

  // we'll increment counter every frame until 60, then reset
  String welcomeMsg =("welcome to the first midterm question!");
    println(welcomeMsg);
  println("now we'll do a loop and print the iterating value!");
  for (int i = 0; i < 3; i++ ) {
    println("this is loop number " +i);
  }

  println("there are " + floatArray[].size() + " positions in floatArray");
}
