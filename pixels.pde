
size(800, 600);
float a= random(0,1);
loadPixels();
for (int i=0; i<pixels.length; i++) {
  pixels[i]=color(i%width*a, i/width, 255);
}

updatePixels();
