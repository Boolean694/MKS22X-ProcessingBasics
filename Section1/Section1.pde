class Visualiser {
  float x;
  float y;
  float[] va;
  float[] sp;
  Visualiser(float ix, float iy) {
    x = ix;
    y = iy;
    va = new float[10];
    sp = new float[10];
    for (int i = 0; i < va.length; i++) {
      va[i] = random(-99, 99);
      sp[i] = random(2);
    }
    fill(255);
    
  }
}
