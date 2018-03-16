PVector M;
PVector A;
boolean P;
boolean Q;
boolean control;
PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);
PFont f;
String[] headline={//
  "¡Bienvenido a LINE!", 
  "Selecciona un nivel para empezar", 
};
int index;//
float hx; //
int level = 0;
int puntoin;
int puntofi;


int[][] grafo = new int[10][10];
{
  grafo[0][0] = 0;  grafo[0][1] = 1;  grafo[0][2] = 0;  grafo[0][3] = 0;  grafo[0][4] = 0;  grafo[0][5] = 0;  grafo[0][6] = 0;  grafo[0][7] = 1;  grafo[0][8] = 0;  grafo[0][9] = 0;
  grafo[1][0] = 1;  grafo[1][1] = 0;  grafo[1][2] = 1;  grafo[1][3] = 1;  grafo[1][4] = 0;  grafo[1][5] = 0;  grafo[1][6] = 0;  grafo[1][7] = 0;  grafo[1][8] = 0;  grafo[1][9] = 0;
  grafo[2][0] = 0;  grafo[2][1] = 1;  grafo[2][2] = 0;  grafo[2][3] = 0;  grafo[2][4] = 0;  grafo[2][5] = 0;  grafo[2][6] = 0;  grafo[2][7] = 0;  grafo[2][8] = 0;  grafo[2][9] = 1;
  grafo[3][0] = 0;  grafo[3][1] = 1;  grafo[3][2] = 0;  grafo[3][3] = 0;  grafo[3][4] = 1;  grafo[3][5] = 1;  grafo[3][6] = 1;  grafo[3][7] = 0;  grafo[3][8] = 0;  grafo[3][9] = 0;
  grafo[4][0] = 0;  grafo[4][1] = 0;  grafo[4][2] = 0;  grafo[4][3] = 1;  grafo[4][4] = 0;  grafo[4][5] = 0;  grafo[4][6] = 1;  grafo[4][7] = 0;  grafo[4][8] = 0;  grafo[4][9] = 0;
  grafo[5][0] = 0;  grafo[5][1] = 0;  grafo[5][2] = 0;  grafo[5][3] = 1;  grafo[5][4] = 0;  grafo[5][5] = 0;  grafo[5][6] = 1;  grafo[5][7] = 0;  grafo[5][8] = 0;  grafo[5][9] = 0;
  grafo[6][0] = 0;  grafo[6][1] = 0;  grafo[6][2] = 0;  grafo[6][3] = 1;  grafo[6][4] = 1;  grafo[6][5] = 1;  grafo[6][6] = 0;  grafo[6][7] = 0;  grafo[6][8] = 1;  grafo[6][9] = 0;
  grafo[7][0] = 1;  grafo[7][1] = 0;  grafo[7][2] = 0;  grafo[7][3] = 1;  grafo[7][4] = 0;  grafo[7][5] = 0;  grafo[7][6] = 0;  grafo[7][7] = 0;  grafo[7][8] = 1;  grafo[7][9] = 0;
  grafo[8][0] = 0;  grafo[8][1] = 0;  grafo[8][2] = 0;  grafo[8][3] = 0;  grafo[8][4] = 0;  grafo[8][5] = 0;  grafo[8][6] = 1;  grafo[8][7] = 1;  grafo[8][8] = 0;  grafo[8][9] = 1;
  grafo[9][0] = 0;  grafo[9][1] = 0;  grafo[9][2] = 1;  grafo[9][3] = 0;  grafo[9][4] = 0;  grafo[9][5] = 0;  grafo[9][6] = 0;  grafo[9][7] = 0;  grafo[9][8] = 1;  grafo[9][9] = 0;
}

int[][] grafo2 = new int[8][8];
{
  grafo2[0][0] = 0;  grafo2[0][1] = 1;  grafo2[0][2] = 0;  grafo2[0][3] = 1;  grafo2[0][4] = 0;  grafo2[0][5] = 0;  grafo2[0][6] = 0;  grafo2[0][7] = 0;
  grafo2[1][0] = 1;  grafo2[1][1] = 0;  grafo2[1][2] = 1;  grafo2[1][3] = 1;  grafo2[1][4] = 1;  grafo2[1][5] = 1;  grafo2[1][6] = 1;  grafo2[1][7] = 0;
  grafo2[2][0] = 0;  grafo2[2][1] = 1;  grafo2[2][2] = 0;  grafo2[2][3] = 0;  grafo2[2][4] = 1;  grafo2[2][5] = 1;  grafo2[2][6] = 1;  grafo2[2][7] = 0;
  grafo2[3][0] = 1;  grafo2[3][1] = 1;  grafo2[3][2] = 0;  grafo2[3][3] = 0;  grafo2[3][4] = 1;  grafo2[3][5] = 1;  grafo2[3][6] = 0;  grafo2[3][7] = 0;
  grafo2[4][0] = 0;  grafo2[4][1] = 1;  grafo2[4][2] = 1;  grafo2[4][3] = 1;  grafo2[4][4] = 0;  grafo2[4][5] = 0;  grafo2[4][6] = 0;  grafo2[4][7] = 1;
  grafo2[5][0] = 0;  grafo2[5][1] = 1;  grafo2[5][2] = 1;  grafo2[5][3] = 1;  grafo2[5][4] = 0;  grafo2[5][5] = 0;  grafo2[5][6] = 1;  grafo2[5][7] = 0;
  grafo2[6][0] = 0;  grafo2[6][1] = 1;  grafo2[6][2] = 1;  grafo2[6][3] = 0;  grafo2[6][4] = 0;  grafo2[6][5] = 1;  grafo2[6][6] = 0;  grafo2[6][7] = 1;
  grafo2[7][0] = 0;  grafo2[7][1] = 0;  grafo2[7][2] = 0;  grafo2[7][3] = 0;  grafo2[7][4] = 1;  grafo2[7][5] = 0;  grafo2[7][6] = 1;  grafo2[7][7] = 0;
 }
 
int[][] grafoj = new int[10][10];
int[][] grafok = new int[8][8];

ArrayList<PVector> puntos = new ArrayList<PVector>();
ArrayList<PVector> puntos2 = new ArrayList<PVector>();

ArrayList<PVector> linea = new ArrayList<PVector>();

  
 void nivel(int a)
{
switch(a){
case 0:
      background(100);
    textFont(f, 16);
    fill(0);
    textSize(50);
    textAlign(LEFT);
    text("Bienvenidos", 100, 120);
    textAlign(CENTER);
    textSize(28);
    //text("¡Bienvenido a LINE!", width/2, height/4);

    text("Nivel 1", 405, 205);
    text("Nivel 2", width/2, height*2/3);
    
if(mousePressed) {
  if (350<=mouseX && mouseX<=460 && 190<=mouseY && mouseY<=220) {
    level=2;
  }
}
  break;
    case 1: 
        background(255);
  grafoj = grafo;
  puntoin = puntos.indexOf(puntoinicial);
  puntofi = puntos.indexOf(puntofinal);
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
   }
   
  
   if (linea.size()==26){
     fill(80);
    quad(0,0,800,0,800,600,0,600);
     fill(0);
     textFont(f, 16);
     textAlign(CENTER);
     textSize(56);
     text("GANASTE!!",width/2,height/2);
   }
   

  M= new PVector(mouseX, mouseY);
  if (!P) {

    line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
  };
  if (!Q && grafoj[puntoin][puntofi] != 0) {
    line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
          println(grafok[puntoin][puntofi]);
          linea.add(puntoinicial);
          linea.add(puntofinal);
          puntoinicial = puntofinal;
          grafoj[puntofi][puntoin]--;
          grafoj[puntoin][puntofi]--;
          
 }
   
  break;
    case 2:
    background(255);
  grafok = grafo2;
  puntoin = puntos2.indexOf(puntoinicial);
  puntofi = puntos2.indexOf(puntofinal);
  println(puntoin, puntofi);
  strokeWeight(8);
  stroke(208, 206, 212);
  line(200, 20, 600, 20);
  line(200, 20, 200, 420);
  line(400, 20, 400, 420);
  line(200, 420, 600, 420);
  line(600, 20, 600, 420);
  line(200, 220, 600, 220);
  line(400, 20, 200, 220);
  line(400, 20, 200, 420);
  line(600, 20, 200, 420);
  line(600, 20, 400, 420);
  line(400, 20, 600, 220);
  stroke(255, 0, 0);
  strokeWeight(10);
  fill(0);
  ellipse(400, 20, 20, 20);
  ellipse(200, 20, 20, 20);
  ellipse(200, 420, 20, 20);
  ellipse(400, 420, 20, 20);
  ellipse(600, 20, 20, 20);
  ellipse(600, 420, 20, 20);
  ellipse(200, 220, 20, 20);
  ellipse(600, 220, 20, 20);
  
  for (int i = 0; i<linea.size()-1; i++) {
    line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
   }
   
  
   if (linea.size()==30){
     fill(80);
    quad(0,0,800,0,800,600,0,600);
     fill(0);
     textFont(f, 16);
     textAlign(CENTER);
     textSize(56);
     text("GANASTE!!",width/2,height/2);
   }
   

  M= new PVector(mouseX, mouseY);
  if (!P) {

    line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
  };
  if (!Q && grafok[puntoin][puntofi] != 0) {
    line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
          println(grafok[puntoin][puntofi]);
          linea.add(puntoinicial);
          linea.add(puntofinal);
          puntoinicial = puntofinal;
          grafok[puntofi][puntoin]--;
          grafok[puntoin][puntofi]--;
          
 }

  break;
}
}
void jugar()
{
}
void setup() {
  size(800, 600);
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
  
  puntos2.add(new PVector(200, 20));
  puntos2.add(new PVector(400, 20));
  puntos2.add(new PVector(600, 20));
  puntos2.add(new PVector(200, 220));
  puntos2.add(new PVector(600, 220));
  puntos2.add(new PVector(200, 420));
  puntos2.add(new PVector(400, 420));
  puntos2.add(new PVector(600, 420));
  P=true;
  Q=true;
  control=true;
  f=createFont("Cambria",48,true);
 }
  

void draw() {
nivel(level);
}

void mousePressed () { 
  switch(level){
    case 1:
  for (int i=0; i<10; i++) {
    if (mouseX<=(puntos.get(i).x+10) && mouseX>=(puntos.get(i).x-10) && mouseY<=(puntos.get(i).y+10) && mouseY>=(puntos.get(i).y-10)) {
       if(control==true){
      puntoinicial = puntos.get(i);
      control=false;
   }
      P=false;  
}
  }
  break;
    case 2:
      for (int i=0; i<8; i++) {
    if (mouseX<=(puntos2.get(i).x+10) && mouseX>=(puntos2.get(i).x-10) && mouseY<=(puntos2.get(i).y+10) && mouseY>=(puntos2.get(i).y-10)) {
       if(control==true){
      puntoinicial = puntos2.get(i);
      control=false;
   }
      P=false;  
}
  }
  break;
  }
}
void mouseReleased () {
  switch(level){
    case 0:
    
    break;
    case 1:
  for (int i=0; i<10; i++) {
    if (mouseX<=(puntos.get(i).x+10) && mouseX>=(puntos.get(i).x-10) && mouseY<=(puntos.get(i).y+10) && mouseY>=(puntos.get(i).y-10)) {
      puntofinal = puntos.get(i);
      Q=false;
      P=true;       
         }
    }
    break;
    case 2:
    for (int i=0; i<8; i++) {
    if (mouseX<=(puntos2.get(i).x+10) && mouseX>=(puntos2.get(i).x-10) && mouseY<=(puntos2.get(i).y+10) && mouseY>=(puntos2.get(i).y-10)) {
      puntofinal = puntos2.get(i);
      Q=false;
      P=true;       
         }
    }
  }
}
