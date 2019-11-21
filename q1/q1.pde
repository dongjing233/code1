float counter=0;
String welcomeMsg[]={"welcome to the first midterm question!", "now well do a loop and print the iterating value!"};
float floatArray[] = new float[100];
int r;
void setup() {
  size(800, 800);
  welcomeMsg= new String[1];
  for (int i=0; i<100; i++) {
    floatArray[i]=random(1, 100);
  }
  for (int j=0; j<1; j++) {
    println(welcomeMsg[j]);
  }
}


void draw() {   
background(0);
  if (frameCount> 60) {
    counter+=1;
    frameCount=0;
  }
  text(counter, width/2, height/2);
  for (int i = 0; i < floatArray.length; i++) {
    println("this is loop number "+i);
    println("there are " + floatArray.length + " positions in floatArray");
  }
}
