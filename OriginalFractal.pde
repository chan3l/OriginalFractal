int size =250;
public void setup() {
  noFill();
  size(500,500);
}
public void draw() {
  for(int x=0; x<=500; x++) {   //background
    stroke(x/2,x+50,220);
    line(0,x,500,x);
  }
  myFractal(mouseX,mouseY,450);
}
public void myFractal(float x, float y, int s){
  strokeWeight(8);
  stroke(200,mouseX/2, 255);
  ellipse(x,y,s,s);
  
  if(s>size) {
    myFractal(x, y-s/4, s/2);
    myFractal(x, y+s/4,s/2);
    myFractal(x-s/4, y, s/2);
    myFractal(x+s/4, y, s/2);
  }
}
void mouseClicked() {
  if(size>60)
    size=size-10;
  else
    size= 250;     //stops stackoverflow
  }