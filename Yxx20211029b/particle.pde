class Particle {
  float xPos;
  float yPos;
  float pSize;
  float xSpeed;
  float ySpeed;

  Particle() {
    xPos=random(width);
    yPos=random(height);

    pSize=20;
    xSpeed=random(-2, 2);
    ySpeed=random(-2, 2);
  }


  void drawParticle() {
    fill(random(255), random(255), random(255));
    rect(xPos, yPos, pSize, pSize);

    xPos+=xSpeed;
    yPos+=ySpeed;

    if (mousePressed==true) {
      float xDist=mouseX-xPos;
      float yDist=mouseY-yPos;
      xPos+=xDist*0.2;
      yPos+=yDist*0.2;
    }
  }
  void checkEdge() {
    if (xPos<0) {
      xPos=0;
      xSpeed*=-1;
    }
    if (xPos>width) {
      xPos=width;
      xSpeed*=-1;
    }
    if (yPos<0) {
      xPos=0;
      xSpeed*=-1;
    }
    if (yPos>height) {
      xPos=height;
      xSpeed*=-1;
    }
  }
}
