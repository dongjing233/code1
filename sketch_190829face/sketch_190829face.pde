int r=50;

void setup() { 
  size(800, 800); 
  background(224, 255, 253); 
  stroke(10); 
  smooth();
}

void draw() { 
  background(224, 255, 253);

  noStroke();
    
  fill(140, 197, 182); 
  ellipse(400, 400, mouseX*2, mouseX*2);


  fill(239, 113, 100); 
  ellipse(400, 500, mouseX/2, mouseX/2);
  
  float e=random(10,30);
  fill(0, 0, 0); 
  stroke(0, 0, 0); 
  ellipse(325, 350, e, e);

  
  fill(0,0,0); 
  stroke(0, 0, 0); 
  ellipse(475, 350, e, e);
}
