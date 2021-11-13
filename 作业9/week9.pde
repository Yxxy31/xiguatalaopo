PImage img; 
int rectA=220;
int rectB=220;
int strokeA;
int str1;
int str2;
int str3;
int str4;

int RECT1=int(random(50,560));
int RECT2=int(random(0,539));
int RECT3=int(random(560,960));
int RECT4=int(random(0,539));
int RECT5=int(random(50,560));
int RECT6=int(random(539,1039));
int Aa=0;
int Bb=120;
int Cc=10;
int Dd=220;

void setup() {
     
  size(1400,1200);
  background(255);
  fill(255);
  rect(0, 500, 20,20);
 
  tint(Aa,Cc,Bb,Dd);
  img = loadImage("one.jpg");
  
}

  void draw(){
  image(img,50,0);
    color colerRect1 =get(RECT1,RECT2);

    fill(colerRect1);
    rect(1050, 0, 100, 100);
    color colerRect2 =get(RECT3,RECT4);

    fill(colerRect2);
    rect(1150, 0, 100, 100);
    color colerRect3 =get(RECT5,RECT6);
    fill(colerRect3);
    rect(1250, 0, 100, 100);
  
   if (mousePressed) {
       if (mouseX>1050&&mouseY<100) {
   RECT1=int(random(50,560));
    RECT2=int(random(0,539));
    RECT3=int(random(560,960));
    RECT4=int(random(0,539));
   RECT5=int(random(50,560));
  RECT6=int(random(539,1039));
       }else if (mouseX>1000&&mouseY>=345&&mouseY<=355) {
        
       str1=int(mouseX)-1000;
        String t = "Red" ;
      fill(0);
      textSize(30);
       text(t, 800, 350);
     tint(str1,Bb,Cc,Dd);
       image(img,50,0);
      
     
      } else if (mouseX>1000&&mouseY>=395&&mouseY<=405) {
      str2=int(mouseX)-1000;
       String q = "Green" ;
      fill(0);
      textSize(30);
       text(q, 800, 400);
         tint(str1,str2,Cc,Dd);
      
    } else if (mouseX>1000&&mouseY>=445&&mouseY<=455) {
          str3=int(mouseX)-1000;
        String p = "Blue"  ;
      fill(0);
      textSize(30);
       text(p, 800, 450);
             tint(str1,str2,str3,Dd);
     
    } else if (mouseX>1000&&mouseY>=495&&mouseY<=505) {
       str4=int(mouseX)-1000;
        String m = "Alpha";
      fill(0);
      textSize(30);
       text(m, 800, 500);
         tint(str1,str2,str3,str4);
     
    }
    
     if(mouseX<690&&mouseY<1000){
      color color_under_mouse = get(mouseX, mouseY);
      fill(color_under_mouse);
       rect(800, 0, 250, 280);
       rectA=color_under_mouse;
      
       strokeA=15;
    } 
    else if (mouseX>690&&mouseY>550) {
      stroke(rectA);
      strokeWeight(strokeA);
      
      line(pmouseX,pmouseY, mouseX, mouseY);
       
    } 
    }
     stroke(0);
      strokeWeight(10);
     line(1000, 350, 1255, 350);
     line(1000, 400, 1255,400);
     line(1000, 450, 1255, 450);
     line(1000, 500, 1255, 500);
  
        String t = "Red:";
      fill(0);
      textSize(30);
       text(t, 800, 350);
   
       String q = "Green:" ;
      fill(0);
      textSize(30);
       text(q, 800, 400);
       
        String p = "Blue:" ;
      fill(0);
      textSize(30);
       text(p, 800, 450);
      
        String m = "Alpha:" ;
      fill(0);
      textSize(30);
       text(m, 800, 500);
       
      }
   
