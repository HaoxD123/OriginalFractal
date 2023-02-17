public void setup(){
  size(500,500);
}
public void draw(){
  MHT(250,250,500);
}

public void MHT(int x , int y, int h){
  frameRate(1);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse(x,y,h,h);
  if(h <= 50){
    ellipse(x, y, h-40, h-40);
    ellipse(x, y, h-40, h-40);
    ellipse(x, y, h-40, h-40);
  } else{
    ellipse(x, y, h-30, h-30);
    ellipse(x, y, h-30, h-30);
    ellipse(x, y, h-30, h-30);
    MHT(x, y, h-30);
  }
}
