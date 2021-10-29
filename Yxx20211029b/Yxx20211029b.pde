Particle [] p;


void setup(){
  size(900,900);
  p=new Particle[50];
 
 for(int i=0;i<p.length;i++){
   p[i]=new Particle();
 } 
  background(0);
}

void draw(){
  
  for(int i=0;i<p.length;i++){
   p[i].drawParticle();
   p[i]. checkEdge();
 } 
}
