PVector pos; 
PVector v; 
PVector g; 

int ground = 400; 
boolean jumping = false; 
boolean pressed; 

void setup() {
  size(600, 600); 
  rectMode(CENTER); 
  pos=new PVector(width/2, ground);
  v=new PVector(0, 0);
  g=new PVector(0, 1);
  //initialize values for your PVectors. HINT your y position should be the ground, initially the square is not moving, and gravity only accelerates in the y direction

  noStroke();
}

void draw() {
  background(28, 128, 255); 

  fill(28, 255, 170); 
  rect(width/2, ground+125, width, 200); 

  move();  

  fill(255); 
  rect(pos.x, pos.y, 50, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      //conditional statement, if the square is not already jumping => then jump
      if (jumping==false) {
        jump();
      }
    }
  }
}  
void move() {
  //update your position 
  if (jumping == true) {
    pos.add(v);  
    addGravity();
  }
  //apply gravity
}

void jump() {
  v.y = -15; 
  v.add(g); 
  jumping = true;
}

void addGravity() {
  if (pos.y < ground) {
    v.add(g);
  } else {
    pos.y = ground; 
    v.y = 0; 
    jumping = false;
  }
}
