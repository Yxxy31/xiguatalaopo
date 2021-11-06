void setup() {
  size(900,900);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/2,400);
}
 
void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 20) {

    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
     drawCircle(x , y+ radius/2, radius/2);
     drawCircle(x , y-radius/2, radius/2);
  }
}
