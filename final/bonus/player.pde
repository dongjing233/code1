class Player {
int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
{0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
{1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
};
int rows = 8, cols = 11; 
int size = 10; 
float xPos=random(0,width);
float yPos=random(0,height);


Player() {

}


void display() {
for(int i = 0; i < rows; i++){
for(int j = 0; j < cols; j++){
if(grid [i][j] == 1){
fill(255,0,0);
}else{
fill(255); 
} 
rect(xPos+j*size,yPos+i*size, size, size); 
}
}
}

void move() {
  
  if (key == CODED) {
    if (keyCode==LEFT) {
      xPos--;
    }
    if (keyCode==RIGHT) {
      xPos++;
    }
    if (keyCode==UP) {
      yPos--;
    }
    if (keyCode==DOWN) {
      yPos++;
    }
  }
  
}
}
