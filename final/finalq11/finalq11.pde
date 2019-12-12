int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 
float i;


void setup(){
size(800, 600); 

}
void draw(){
background(0); 

theta += .1;
i += 0.3;
xPos += xDirection; 
yPos = sin(theta); 
fill(255); 
if (xPos>width ||xPos<0){
xDirection=-xDirection;
}
ampl=map(xPos, 0, width, 0, height/2);
ellipse(xPos, sin(theta)*ampl+height/2, size, size); 

}
