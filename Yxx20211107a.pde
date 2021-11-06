boolean[][] CA;
int dim=10;
int AS;

void setup() {
  size(805, 801);
  AS=width/dim;
  CA=new boolean[AS][AS];
  reset();
  frameRate(1);
}


void draw() {
  background(255);
  for (int i=0; i<AS; i++) {
    for (int j=0; j<AS; j++) {
      if (CA[i][j]) {
        fill(0);
        stroke(0);
      } else {
        noFill();
        noStroke();
      }
      rect(i*dim, j*dim, dim-1, dim-1);
    }
  }
  update();
}

void update() {
  boolean[][]CA_new=new boolean[AS][AS];
  for (int i=0; i<AS; i++) {
    for (int j=0; j<AS; j++) {
      int count=checkNeighbors(i, j);
      if (CA[i][j]) {
        if (count<3) {
          CA_new[i][j]=false;
        }
        if (count==3 || count==6) {
          CA_new[i][j]=true;
        }
        if (count>6) {
          CA_new[i][j]=false;
        } else {
          if (count==6) {
            CA_new[i][j]=true;
          }
        }
      }
    }
    CA=CA_new;
  }
}
 int checkNeighbors(int i,int j){
    int count=0;
    if (CA[((i-1)+AS)%AS][j]) count++;
    if (CA[((i-1)+AS)%AS][((j-1)+AS)%AS]) count++;
    if (CA[((i-1)+AS)%AS][((j+1))%AS]) count++;
    if (CA[i][((j+1))%AS]) count++;
    if (CA[i][((j-1)+AS)%AS]) count++;
    if (CA[(i+1)%AS][j]) count++;
    if (CA[(i+1)%AS][((j-1)+AS)%AS]) count++;
    if (CA[(i+1)%AS][(j+1)%AS]) count++;

    return count;
  }


 void reset(){
    for (int i=0; i<AS; i++) {
      for (int j=0; j<AS; j++) {
        if (random(1)<0.7) {
          CA[i][j]=false;
        } else {
          CA[i][j]=true;
        }
      }
    }
  }
