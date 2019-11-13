Cloud myCloud;
Cloud[] myClouds=new Cloud[20];
int num=20;


void setup() {
  size(800, 800);
  myCloud=new Cloud();

  for (int i=0; i<20; i++) {
    myClouds[i]=new Cloud();
  };
}

void draw() {
  background(250); 

  for (int i = 0; i<num; i++) {
    myClouds[i].drawCloud(); 
    myClouds[i].moveCloud();
  }
}
