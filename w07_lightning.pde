void drawLightning(int x, int y, int numParts){
  int i=0;
  while(i < numParts){
    int nextx = int(random(x-25,x+25));
    line(x,y, nextx,y+height/numParts);
    i=i+1;
    x=nextx;
    y=y+height/numParts;
  }
}

void setup(){
 size(500,500);
 background(0);
 stroke(250,250,0);
 strokeWeight(5);
 drawLightning(25,0,50);
 drawLightning(135,0,50);
 drawLightning(275,0,50);
 drawLightning(350,0,50);
 drawLightning(425,0,20);
}
