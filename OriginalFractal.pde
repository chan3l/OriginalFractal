public void setup() {
  size(500,500);
  rectMode(CENTER);
}
public void draw() {
  for(int x=0; x<=500; x++) {
    stroke(x/2,x+50,220);
    line(0,x,500,x);
  }
  myFractal(250,250,200);
}
public void myFractal(int x, int y, int siz){
  noStroke();
  fill(255,255,255, 230-siz);
  rect(x,y,siz,siz, siz*100);
  
  if(siz>30) {
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
  }
}