//declare variables;
float a;
int size=100;

void setup(){
  size(800,800);
  a=(width/2);
}

void draw(){
  fill(100,100,100);
  ellipse(a, a, size,size);
    
  if(dist(a)<50){
    fill(250,0,0);
    ellipse(width/2, height/2, size,size);
  }else{
    fill(100,100,100);
  }
  
    if(dist(a)<50 && mousePressed){
    background(0,250,250);
  }
  

}

float dist(float a){
    float dist=sqrt(sq(a-mouseX)+sq(a-mouseY));
  return dist;
}
 
