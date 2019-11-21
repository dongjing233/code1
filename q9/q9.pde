//this sketch serves as a basic kind of clock 
//visualization, with rectangles moving across 
//the screen to represent the second, minute, 
//and hour hands. this clock has the seconds hands 
//working, but not the minutes and hours. finish 
//the variable assignment in the draw loop to get them
//working.
void setup() {
  size(600, 600);
}

void draw() {
  background(20);
  
  fill(255);
  
  float hourPos = map(frameCount/216000, 0, 60, 0, width);
  rect(hourPos, 0, width/60, 200);
  
  float minutePos = map(frameCount/3600, 0, 60, 0, width);
  rect(minutePos, 200, width/60, 200);
  
  float secondPos = map(frameCount/60, 0, 60, 0, width);
  rect(secondPos, 400, width/60, 600);
}
