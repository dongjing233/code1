//declare variables;
float a,b;
int size=100;

void setup(){
  size(800,800);
  a=(width/2);
  b=(height/2);
}

void draw(){
  
  float d = dist(mouseX, mouseY, a, b);
  
    
  if(d<50){
  //println("inside circle");
  fill(250,250,250);
  if(mousePressed){
    background(250,0,0);
  }
  else{
    background(0,0,250);
  }
  }else{
    fill(0,0,0);
  }
    ellipse(a, b, size,size);
 

}
 
