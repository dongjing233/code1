float ranNum[]=new float [100];
void setup(){
    for(int i=0;i<100;i++) {
      ranNum[i]=random(1,100);
      println(ranNum[i]);
    }  
    size(800,800);
}


void draw(){
  
    for(int i=0;i<ranNum.length;i++) {
     rect(ranNum[i],ranNum[i],ranNum[i],ranNum[i]);
    }
    
}
