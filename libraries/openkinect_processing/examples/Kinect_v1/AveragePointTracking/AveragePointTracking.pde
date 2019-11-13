import org.openkinect.freenect.*;
import org.openkinect.processing.*;

KinectTracker tracker;
Kinect kinect;
import processing.serial.*;
Serial myPort;  
String val; 


void setup() {
  size(640, 520);
  kinect = new Kinect(this);
  tracker = new KinectTracker();
    String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
}

void draw() {
     if ( myPort.available() > 0) 
  {  
    val = myPort.readStringUntil('\n');    
  } 
  background(255);
  tracker.track();
  tracker.display();

  PVector v1 = tracker.getPos();
  fill(50, 100, 250, 200);
  noStroke();
  ellipse(v1.x, v1.y, 20, 20);

  PVector v2 = tracker.getLerpedPos();
  fill(100, 250, 50, 200);
  noStroke();
  ellipse(v2.x, v2.y, 20, 20);

  int t = tracker.getThreshold();
  fill(0);
  text("threshold: " + t + "    " +  "framerate: " + int(frameRate) + "    " + 
    "UP increase threshold, DOWN decrease threshold", 10, 500);
}

// Adjust the threshold with key presses
void keyPressed() {
  int t = tracker.getThreshold();
  if (key == CODED) {
    if (keyCode == UP) {
      t+=5;
      tracker.setThreshold(t);
    } else if (keyCode == DOWN) {
      t-=5;
      tracker.setThreshold(t);
    }
  }
}
