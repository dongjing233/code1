int brushSize; 
int b=0;


void setup(){
  size(1000, 1000); 
  background(b,b,b); 
  brushSize = 50; 
}

void draw(){
  fill(255, 0); ///opacity
  rect(0, 0, width, height); 
  
  if(keyPressed){
    if(key==CODED){
      if(keyCode==LEFT){
    fill(mouseX/4,mouseY/4,mouseY/4); 
    noStroke(); 
    rect(mouseX, mouseY,brushSize, brushSize); 
      }
    }
    else
    {fill(mouseX/4,mouseY/4,mouseY/4);  
    ellipse(mouseX, mouseY,brushSize, brushSize); 
    }
  }
  
  //if(keyPressed){
  //  brushSize += 10; 
  //}
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 10; 
    }else if(keyCode == DOWN && brushSize >10){
      brushSize -= 10; 
    }
    
    
if(mousePressed){
    b=b+100;
  }
  


  }
}
