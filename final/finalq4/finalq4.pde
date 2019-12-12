int n1, n2; 
int sum; 
int r;

void setup(){
size(300, 300); 

n1 = int(random(0,10)); 
n2 = int(random(0,10)); 
sum=n1+n2;

String[] additionSentence = {str(n1) + " + " + str(n2) + " = " + str(sum)};
text(additionSentence[r], width*.2, height/2); 
}
