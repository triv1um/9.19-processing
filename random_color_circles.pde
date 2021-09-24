void setup(){
  size(480,480);
  smooth();
}

void draw(){
  if (mousePressed){
    fill(0);
  }else{
    fill(random(255),random(255),random(255));
  }
  ellipse(mouseX, mouseY, 80, 80);
}
