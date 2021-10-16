PFont myFont1;
int  Z=20;
String sr1="骑";
String sr2="马";
String sr3="倚";
String sr4="斜";
String sr5="桥";
//int Xx=width/2;


void setup(){
  size(600, 600);
   myFont1 = createFont("AgencyFB-Bold-48-a.vlw", 24);
}

void draw(){
  
  background(255);
 
 
  textAlign(CENTER, CENTER);

  textFont(myFont1);
  textSize(Z);
  text(sr1, width/2,100);
  text(sr2, width/2,200);
  text(sr3, width/2,300);
  text(sr4,width/2,400);
  text(sr5, width/2,500);
  
  stroke(255,0,0);
  point(50, 300);
  
  
}


void mouseMoved(){
   
   fill(random(255),random(255),random(255));
   if(Z>60){
   Z =20;
   }
   Z+=10;

  
}
