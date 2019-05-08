int levels;
color bg,fg;

void setup() {
  size(800, 600);
  levels = 1;
}

/*Create Sierpiski's Gasket (google an image of this)
  The outer triangle are the vertices: (v1x, v1y), (v2x,v2y), (v3x, v3y)
  levels:
  0 = regular triangle
  1 = triforce (looks like 3 triangles)
  2 = each of the 3 triangles will be cut into 3 triangles.
  etc.
*/
void gasket(int levels, float v1x, float v1y, float v2x, float v2y, float v3x, float v3y) {
   if(levels == 0) {
     
   }
   else {
     fill(255,0,0);
     triangle(v1x,v1y,v2x,v2y,v3x,v3y);
     float mid12x = (v1x + v2y) / 2;
     float mid12y = (v1y + v2y) / 2;
     float mid13x = (v1x + v3x) / 2;
     float mid13y = (v1y + v3y) / 2;
     float mid23x = (v2x + v3x) / 2;
     float mid23y = (v2y + v3y) / 2;
     fill(255,255,255);
     triangle(mid12x,mid12y,mid13x,mid13y,mid23x,mid23y);
     gasket(levels - 1, v1x,v1y,mid12x,mid12y,mid13x,mid13y);
     gasket(levels - 1, mid12x,mid12y,v2x,v2y,mid23x,mid23y);
     gasket(levels - 1, mid13x,mid13y,mid23x,mid23y,v3x,v3y);
   }
}

void draw() { 
  background(50);  
  
  fill(255);
  text("Click the mouse to increase levels, press a key to decrease levles",20,20);

  gasket(levels,0, height-10, width, height-10, width/2, 10);

 //koch(levels,width-10, height/2,10, height/3 ); 
 //other fractal you can do! This requires a bit more math, or you can look up the coordinates.
}

void mouseClicked(){ 
 levels ++;  
}

void keyPressed(){
 levels --; 
}
