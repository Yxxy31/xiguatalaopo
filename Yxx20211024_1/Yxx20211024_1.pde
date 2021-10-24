int rectA=220;
int rectB=220;
int strokeA;
int strokeB;


void setup() {
  size(800, 800);
  background(220);
  fill(255);
  rect(0, 0, 100, 100);
  rect(0, 200, 100, 100);
  line(0, 50, 100, 50);
  line(50, 0, 50, 100);
}


void draw() {

  if (mousePressed) {
    if (mouseX<width/8&&mouseY<height/8) {
      fill(0);
      rect(0, 0, 100, 100);
      fill(255);
      rect(0, 200, 100, 100);
      rectA=0;
      rectB=220;
      strokeA=2;
    } else if (mouseX>200) {
      stroke(rectA);
      strokeWeight(strokeA);
      line(mouseX-66, mouseY, mouseX+66, mouseY);
      line(mouseX, mouseY-66, mouseX, mouseY+66);
      stroke(rectB);
      strokeWeight(strokeB);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (mousePressed) {
      if (mouseX<width/8&&mouseY>height/4&&mouseY<height/2) {
        fill(0);
        rect(0, 200, 100, 100);
        fill(255);
        rect(0, 0, 100, 100);
        rectA=220;
        rectB=0;
        strokeB=10;
      }
    }
  }
}
