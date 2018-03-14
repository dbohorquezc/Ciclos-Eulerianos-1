PVector M;
PVector A;
boolean P;
boolean Q;
PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);

boolean[][] grafo = new boolean[10][10];
{
  grafo[0][0] = false;
  grafo[0][1] = true;
  grafo[0][2] = false;
  grafo[0][3] = false;
  grafo[0][4] = false;
  grafo[0][5] = false;
  grafo[0][6] = false;
  grafo[0][7] = true;
  grafo[0][8] = false;
  grafo[0][9] = false;
  grafo[1][0] = true;
  grafo[1][1] = false;
  grafo[1][2] = true;
  grafo[1][3] = true;
  grafo[1][4] = false;
  grafo[1][5] = false;
  grafo[1][6] = false;
  grafo[1][7] = false;
  grafo[1][8] = false;
  grafo[1][9] = false;
  grafo[2][0] = false;
  grafo[2][1] = true;
  grafo[2][2] = false;
  grafo[2][3] = false;
  grafo[2][4] = false;
  grafo[2][5] = false;
  grafo[2][6] = false;
  grafo[2][7] = false;
  grafo[2][8] = false;
  grafo[2][9] = true;
  grafo[3][0] = false;
  grafo[3][1] = true;
  grafo[3][2] = false;
  grafo[3][3] = false;
  grafo[3][4] = true;
  grafo[3][5] = true;
  grafo[3][6] = true;
  grafo[3][7] = false;
  grafo[3][8] = false;
  grafo[3][9] = false;
  grafo[4][0] = false;
  grafo[4][1] = false;
  grafo[4][2] = false;
  grafo[4][3] = true;
  grafo[4][4] = false;
  grafo[4][5] = false;
  grafo[4][6] = true;
  grafo[4][7] = false;
  grafo[4][8] = false;
  grafo[4][9] = false;
  grafo[5][0] = false;
  grafo[5][1] = false;
  grafo[5][2] = false;
  grafo[5][3] = true;
  grafo[5][4] = false;
  grafo[5][5] = false;
  grafo[5][6] = true;
  grafo[5][7] = false;
  grafo[5][8] = false;
  grafo[5][9] = false;
  grafo[6][0] = false;
  grafo[6][1] = false;
  grafo[6][2] = false;
  grafo[6][3] = true;
  grafo[6][4] = true;
  grafo[6][5] = true;
  grafo[6][6] = false;
  grafo[6][7] = false;
  grafo[6][8] = true;
  grafo[6][9] = false;
  grafo[7][0] = true;
  grafo[7][1] = false;
  grafo[7][2] = false;
  grafo[7][3] = false;
  grafo[7][4] = false;
  grafo[7][5] = false;
  grafo[7][6] = false;
  grafo[7][7] = false;
  grafo[7][8] = true;
  grafo[7][9] = false;
  grafo[8][0] = false;
  grafo[8][1] = false;
  grafo[8][2] = false;
  grafo[8][3] = false;
  grafo[8][4] = false;
  grafo[8][5] = false;
  grafo[8][6] = true;
  grafo[8][7] = true;
  grafo[8][8] = false;
  grafo[8][9] = true;
  grafo[9][0] = false;
  grafo[9][1] = false;
  grafo[9][2] = true;
  grafo[9][3] = false;
  grafo[9][4] = false;
  grafo[9][5] = false;
  grafo[9][6] = false;
  grafo[9][7] = false;
  grafo[9][8] = true;
  grafo[9][9] = false;
}

ArrayList<PVector> puntos = new ArrayList<PVector>();

/*int punto[][]=new int [10][2];
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
 }*/

ArrayList<PVector> linea = new ArrayList<PVector>();

void setup() {
  size(800, 800);
  puntos.add(new PVector(200, 20));
  puntos.add(new PVector(400, 20));
  puntos.add(new PVector(600, 20));
  puntos.add(new PVector(400, 120));
  puntos.add(new PVector(300, 220));
  puntos.add(new PVector(500, 220));
  puntos.add(new PVector(400, 320));
  puntos.add(new PVector(200, 420));
  puntos.add(new PVector(400, 420));
  puntos.add(new PVector(600, 420));
  P=true;
  Q=true;
}
void draw() {
  background(255);
  int puntoin = puntos.indexOf(puntoinicial);
  int puntofi = puntos.indexOf(puntofinal);
  println(puntoin, puntofi);
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
  stroke(255, 0, 0);
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

  for (int i = 0; i<linea.size()-1; i++) {
    line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
    if (puntoin != -1 && puntofi != -1) {
      if (!grafo[puntoin][puntofi]){
        linea.remove(linea.size()-1);
      }
    }
  }

  M= new PVector(mouseX, mouseY);
  if (!P) {

    line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
  };
  if (!Q) {
    line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
  };
}
void mousePressed () {
  for (int i=0; i<10; i++) {
    if (mouseX<=(puntos.get(i).x+10) && mouseX>=(puntos.get(i).x-10) && mouseY<=(puntos.get(i).y+10) && mouseY>=(puntos.get(i).y-10)) {
      puntoinicial = puntos.get(i);
      P=false;
    }
  }
}
void mouseReleased () {
  for (int i=0; i<10; i++) {
    if (mouseX<=(puntos.get(i).x+10) && mouseX>=(puntos.get(i).x-10) && mouseY<=(puntos.get(i).y+10) && mouseY>=(puntos.get(i).y-10)) {
      puntofinal = puntos.get(i);
      Q=false;
      P=true;
      linea.add(puntoinicial);
      linea.add(puntofinal);
    }
  }
}
