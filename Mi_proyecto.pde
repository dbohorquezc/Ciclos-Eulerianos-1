PVector M;
PVector A;
boolean P;
boolean Q;
int z;
int w;
int x;
int y;

PVector punto1 = new PVector(600,420);

int punto[][]=new int [10][2];
{
  punto[0][0]=600;
  punto[0][1]=420;
  punto[1][0]=400;
  punto[1][1]=20;
  punto[2][0]=200;
  punto[2][1]=20;
  punto[3][0]=200;
  punto[3][1]=420;
  punto[4][0]=400;
  punto[4][1]=420;
  punto[5][0]=400;
  punto[5][1]=320;
  punto[6][0]=300;
  punto[6][1]=220;
  punto[7][0]=400;
  punto[7][1]=120;
  punto[8][0]=500;
  punto[8][1]=220;
  punto[9][0]=600;
  punto[9][1]=20;
}

ArrayList<PVector> linea = new ArrayList<PVector>();

void setup() {
  size(800, 800);
  x=0;
  y=0;
  P=true;
  Q=true;
}
void draw() {
  background(255);
  strokeWeight(8);
  stroke(208, 206, 212);
  line(200, 20, 600, 20);
  line(200, 20, 200, 420);
  line(400, 20, 400, 420);
  line(200, 420, 600, 420);
  line(600, 20, 600, 420);
  line(400, 320, 300, 220);
  line(300, 220, 400, 120);
  line(400, 120, 500, 220);
  line(500, 220, 400, 320);
  stroke(0);
  strokeWeight(10);
  fill(0);
  ellipse(400, 20, 20, 20);
  ellipse(200, 20, 20, 20);
  ellipse(200, 420, 20, 20);
  ellipse(400, 420, 20, 20);
  ellipse(400, 320, 20, 20);
  ellipse(300, 220, 20, 20);
  ellipse(400, 120, 20, 20);
  ellipse(500, 220, 20, 20);
  ellipse(600, 20, 20, 20);
  ellipse(600, 420, 20, 20);
  
  for (int i = 0; i<linea.size()-1;i++){
    line(linea.get(i).x,linea.get(i).y,linea.get(i+1).x,linea.get(i+1).y);
  }

  M= new PVector(mouseX, mouseY);
 //println(mouseX,"  ",mouseY);
  if (!P) {
    line(x, y, mouseX, mouseY);
  };
  if (!Q) {
    line(x, y, z, w);
  };
}
void mousePressed () {
  for (int i=0; i<10; i++) {
    for (int j=0; j<2; j++) {
      if (mouseX<=(punto[i][0]+10) && mouseX>=(punto[i][0]-10) && mouseY<=(punto[i][1]+10) && mouseY>=(punto[i][1]-10)) {
        x=punto[i][0];
        y=punto[i][1];
        P=false;
      }
    }
    //
  }
}
void mouseReleased () {
  for (int i=0; i<10; i++) {
    for (int j=0; j<2; j++) {
      if (mouseX<=(punto[i][0]+10) && mouseX>=(punto[i][0]-10) && mouseY<=(punto[i][1]+10) && mouseY>=(punto[i][1]-10)) {
        z=punto[i][0];
        w=punto[i][1];
        Q=false;
        P=true;
        linea.add(new PVector(x,y));
        linea.add(new PVector(z,w));
      }
    }
  }
}
