class Visualizer {
  float x;
  float y;
  float[] va;
  float[] sp;
  Visualizer(float ix, float iy) {
    x = ix;
    y = iy;
    va = new float[10];
    sp = new float[10];
    for (int i = 0; i < va.length; i++) {
      va[i] = random(-99, 99);
      sp[i] = random(2);
    }
  }
  void display() {
    fill(255);
    rect(x,y,400,200);
    line(x,y+100,x+400,y+100);
    for(int q = 0; q < 10; q++) {
      if(va[q] <= 0) {
        fill(0,255,0);
      }
      else {
        fill(255,0,0);
      }
      rect(x + (q * 40), y + 100, 40, va[q]);
    }
  }
  void update() {
    for(int q = 0; q < va.length; q++) {
      if(va[q] + sp[q] > 100 || va[q] + sp[q] < -100) {
        sp[q] *= -1;
      }
      va[q] += sp[q];
    }
  }
}
void setup() {
  size(600, 500);
}
void draw() {
  setup();
  Visualizer v = new Visualizer(20, 20);
  background(255);
  v.display();
  v.update();
}
