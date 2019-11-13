String words[];
int c=0;

void setup(){
  words=new String[9];
   words[0]="the";
   words[1]="rain";
   words[2]="in";
   words[3]="spain";
   words[4]="is";
   words[5]="mainly";
   words[6]="on";
   words[7]="the";
   words[8]="plain";

}
void draw(){
for (int i=0; i<9;i++){
if (words[i]=="the"){
  c++;
}
println(c);
}
}
