void setup(){
  size(600,600);
  rectMode(CENTER);
}
 int theta=0;
 
void draw(){
  background(255);
  fill(255);
  theta--;
  
  noFill();
  pushMatrix();///curly bracket
    translate(width/2, height/2);
    rotate(radians(theta));
    scale(2);
    rect(0,0,100,100);
  popMatrix();///closing bracket
  
  
  
    for(int i=0;i<100;i++){
    pushMatrix();///curly bracket
    translate(width/2,height/2);
    rotate(radians(-theta+i));
    rect(0,0,i*2,i*2);
    popMatrix();///closing bracket
    }
  
  
}
