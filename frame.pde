void setup() {

  size(400, 400);
}


void draw() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    int x=i%width;
    int y=i/width;

    float r=map(cos(x*0.01+frameCount*0.05), -1, 1, 100, 255);
    float g=map(cos(y*0.012+frameCount*0.02+sq(x*0.01)), -1, 1, 0, 255);
    float b=map(sin(frameCount*0.1), -1, 1, 0, 255);

    pixels[i]=color(r, g, b);
  }
  updatePixels();

  surface.setTitle(nf(frameRate, 2,0));
}
