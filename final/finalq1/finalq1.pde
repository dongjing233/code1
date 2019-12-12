String welcomeMsg[]={"welcome to the first midterm question!", "now well do a loop and print the iterating value!"};
boolean isCodeGreat = true;
float floatArray[] = new float[100];

void setup() {
  welcomeMsg= new String[1];
  for (int j=0; j<1; j++) {
    println(welcomeMsg[j]);
  }
  for (int i=0; i<100; i++) {
    floatArray[i]=random(1, 100);
    println("this is loop number " + i);
  }
  println("now well do a loop and print the iterating value!");
  for (int i = 0; i<3; i++);
}


void draw() {
  isCodeGreat = true;
  if (isCodeGreat) {
    print(floatArray[0]);
  }
}
