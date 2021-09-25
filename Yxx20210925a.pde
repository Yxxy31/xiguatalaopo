boolean withStroke;
boolean withFill;

void setup(){
size(900,900, P3D);
background(144,145,206);
}



void draw(){
 float A=random(width);
 float B=random(height);
 float C=random(20,600);
 float D=random(20,600);

stroke(random(255),random(255),random(255));
fill(random(255),random(255),random(255));



rotateY(radians(60));
rect(A,B,C,D);
}
