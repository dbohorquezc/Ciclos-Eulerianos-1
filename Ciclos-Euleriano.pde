PVector M;
PVector A;
boolean P;
boolean Q;
boolean control;
PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);
int level = 0;
int puntoin;
int puntofi;
int nodo;

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

int[][] grafo3= new int[9][9];
{
grafo3[0][0] = 0;  grafo3[0][1] = 1;  grafo3[0][2] = 1;  grafo3[0][3] = 0;  grafo3[0][4] = 0;  grafo3[0][5] = 0;  grafo3[0][6] = 0;  grafo3[0][7] = 0;  grafo3[0][8] = 0;
grafo3[1][0] = 1;  grafo3[1][1] = 0;  grafo3[1][2] = 0;  grafo3[1][3] = 1;  grafo3[1][4] = 1;  grafo3[1][5] = 0;  grafo3[1][6] = 0;  grafo3[1][7] = 0;  grafo3[1][8] = 0;  
grafo3[2][0] = 1;  grafo3[2][1] = 0;  grafo3[2][2] = 0;  grafo3[2][3] = 1;  grafo3[2][4] = 1;  grafo3[2][5] = 0;  grafo3[2][6] = 0;  grafo3[2][7] = 0;  grafo3[2][8] = 0; 
grafo3[3][0] = 0;  grafo3[3][1] = 1;  grafo3[3][2] = 1;  grafo3[3][3] = 0;  grafo3[3][4] = 0;  grafo3[3][5] = 1;  grafo3[3][6] = 1;  grafo3[3][7] = 0;  grafo3[3][8] = 0;  
grafo3[4][0] = 0;  grafo3[4][1] = 1;  grafo3[4][2] = 1;  grafo3[4][3] = 0;  grafo3[4][4] = 0;  grafo3[4][5] = 1;  grafo3[4][6] = 1;  grafo3[4][7] = 0;  grafo3[4][8] = 0; 
grafo3[5][0] = 0;  grafo3[5][1] = 0;  grafo3[5][2] = 0;  grafo3[5][3] = 1;  grafo3[5][4] = 1;  grafo3[5][5] = 0;  grafo3[5][6] = 0;  grafo3[5][7] = 1;  grafo3[5][8] = 1;  
grafo3[6][0] = 0;  grafo3[6][1] = 0;  grafo3[6][2] = 0;  grafo3[6][3] = 1;  grafo3[6][4] = 1;  grafo3[6][5] = 0;  grafo3[6][6] = 0;  grafo3[6][7] = 1;  grafo3[6][8] = 1;  
grafo3[7][0] = 0;  grafo3[7][1] = 0;  grafo3[7][2] = 0;  grafo3[7][3] = 0;  grafo3[7][4] = 0;  grafo3[7][5] = 1;  grafo3[7][6] = 1;  grafo3[7][7] = 0;  grafo3[7][8] = 0; 
grafo3[8][0] = 0;  grafo3[8][1] = 0;  grafo3[8][2] = 0;  grafo3[8][3] = 0;  grafo3[8][4] = 0;  grafo3[8][5] = 1;  grafo3[8][6] = 1;  grafo3[8][7] = 0;  grafo3[8][8] = 0; 
}

int[][] grafoj = new int[10][10];
int[][] grafok = new int[8][8];
int[][] grafol = new int[9][9];

ArrayList<PVector> puntos = new ArrayList<PVector>();

ArrayList<PVector> puntos2 = new ArrayList<PVector>();

ArrayList<PVector> puntos3 = new ArrayList<PVector>();

ArrayList<PVector> linea = new ArrayList<PVector>();

void grafoiq(){
  grafoj=grafo;
}
 void nivel(int a)
{
switch(a){
case 0:
    background(100);    
fill(0,0,200);
    rect(width/2-155,height*2/4-70/2,110,60,15);
    fill(255, 204, 0);
    rect(width/2-155,height*2/3-40,110,60,15);      
    fill(5, 75, 80, 80);
    fill(0,100,0);
    rect(width/2+45,height*2/4-70/2,110,60,15);
    fill(150,50,30);
    rect(width/2+45,height*2/3-40,110,60,15);
    fill(30, 155, 130);
    rect(width/2-55,height*3/4,110,60,15);
    fill(0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    text("¡Bienvenido a Connect!", width*1/2,height*1/4 );
    textSize(28);
    text("Nivel 1", width/2-100, height*2/4);
    text("Nivel 3", width/2-100, height*2/3);
    text("Nivel 2", width/2+100, height*2/4);
    text("Nivel 4", width/2+100, height*2/3);
    text("Nivel 5", width/2, height*3/4+40);
    textAlign(CENTER);
    textSize(16);
    text("Elija el tamaño",width*1/10,height*2/4);
    text("de los nodos:",width*1/10,height*2/4+15);
    
    fill(150);
    rect(width*1/35,height*2/4+30,30,30);
    rect(width*1/35+50,height*2/4+30,30,30);
    rect(width*1/35+100,height*2/4+30,30,30);
    rect(width*1/35,height*2/4+80,30,30);
    rect(width*1/35+50,height*2/4+80,30,30);
    rect(width*1/35+100,height*2/4+80,30,30);
    rect(width*1/35,height*2/4+130,30,30);
    rect(width*1/35+50,height*2/4+130,30,30);
    rect(width*1/35+100,height*2/4+130,30,30);
    fill(0);
    text("5",width*1/35+15,height*2/4+50);
    text("10",width*1/35+65,height*2/4+50);
    text("15",width*1/35+115,height*2/4+50);
    text("20",width*1/35+15,height*2/4+100);
    text("25",width*1/35+65,height*2/4+100);
    text("30",width*1/35+115,height*2/4+100);
    text("35",width*1/35+15,height*2/4+150);
    text("40",width*1/35+65,height*2/4+150);
    text("45",width*1/35+115,height*2/4+150);
    if(mousePressed) {
    if(width*1/35<=mouseX && mouseX<=width*1/35+30 && height*2/4+30<=mouseY && mouseY<=height*2/4+60){
    nodo=5;
    }
    if(width*1/35+50<=mouseX && mouseX<=width*1/35+80 && height*2/4+30<=mouseY && mouseY<=height*2/4+60){
    nodo=10;
    }
    if(width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+30<=mouseY && mouseY<=height*2/4+60){
    nodo=15;
    println (nodo);
    }
    if(width*1/35<=mouseX && mouseX<=width*1/35+30 && height*2/4+80<=mouseY && mouseY<=height*2/4+110){
    nodo=20;
    println (nodo);
    }
    if(width*1/35+50<=mouseX && mouseX<=width*1/35+80 && height*2/4+80<=mouseY && mouseY<=height*2/4+110){
    nodo=25;
    println (nodo);
    }
    if(width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+80<=mouseY && mouseY<=height*2/4+110){
    nodo=30;
    println (nodo);
    }
    if(width*1/35<=mouseX && mouseX<=width*1/35+30 && height*2/4+130<=mouseY && mouseY<=height*2/4+160){
    nodo=35;
    println (nodo);
    }
    if(width*1/35+30<=mouseX && mouseX<=width*1/35+80 && height*2/4+130<=mouseY && mouseY<=height*2/4+160){
    nodo=40;
    println (nodo);
    }
    if(width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+130<=mouseY && mouseY<=height*2/4+160){
    nodo=45;
    println (nodo);
    }
    
    
    
}
  
if(mousePressed) {
if (width/2-110/2<=mouseX && mouseX<=width/2-110/2+110 && height*2/4-70/2<=mouseY && mouseY<=height*2/4-70/2+60) {
  level=1;
}
if (width/2-110/2<=mouseX && mouseX<=width/2-110/2+110 && height*3/4-70/2<=mouseY && mouseY<=height*3/4-70/2+60) {
  level=2;
}
}
break;
  case 1: 
      background(255);
/*grafoj = grafo;*/
grafoiq();
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
ellipse(400, 20, nodo, nodo);
ellipse(200, 20, nodo, nodo);
ellipse(200, 420, nodo, nodo);
ellipse(400, 420, nodo, nodo);
ellipse(400, 320, nodo, nodo);
ellipse(300, 220, nodo, nodo);
ellipse(400, 120, nodo, nodo);
ellipse(500, 220, nodo, nodo);
ellipse(600, 20, nodo, nodo);
ellipse(600, 420, nodo, nodo);

for (int i = 0; i<linea.size()-1; i++) {
  line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
 }
 

 if (linea.size()==26){
   level=3;
 }
 

M= new PVector(mouseX, mouseY);
if (!P) {

  line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
};
if (!Q && grafoj[puntoin][puntofi] != 0) {
  line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
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
ellipse(400, 20, nodo, nodo);
ellipse(200, 20, nodo, nodo);
ellipse(200, 420, nodo, nodo);
ellipse(400, 420, nodo, nodo);
ellipse(600, 20, nodo, nodo);
ellipse(600, 420, nodo, nodo);
ellipse(200, 220, nodo, nodo);
ellipse(600, 220, nodo, nodo);

for (int i = 0; i<linea.size()-1; i++) {
  line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
 }
 

 if (linea.size()==30){
level=3;
 }
 

M= new PVector(mouseX, mouseY);
if (!P) {

  line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
};
if (!Q && grafok[puntoin][puntofi] != 0) {
  line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
        linea.add(puntoinicial);
        linea.add(puntofinal);
        puntoinicial = puntofinal;
        grafok[puntofi][puntoin]--;
        grafok[puntoin][puntofi]--;
        
 }

break;
case 3:
fill(80);
  quad(0,0,800,0,800,600,0,600);
   fill(0);
   textAlign(CENTER);
   textSize(56);
   text("GANASTE!!",width/2,height/2);
    fill(50,50,30);
    rect(width/2-210/2,height*5/6-70/2,210,60,15);      
    fill(0);
    textSize(50);
    textAlign(CENTER);   
    textSize(28);
    text("Volver al menú", width/2, height*5/6);
    if(mousePressed ){
      if (width/2-210/2<=mouseX && mouseX<=width/2-210/2+210 && height*5/6-70/2<=mouseY && mouseY<=height*5/6-70/2+60) {
  level=0;
for (int i = linea.size() - 1; i >= 0; i--) {
  linea.remove(i);
}
}
}
 break;
 case 4:
  background(255);
grafol = grafo3;
puntoin = puntos3.indexOf(puntoinicial);
puntofi = puntos3.indexOf(puntofinal);
strokeWeight(8);
stroke(208, 206, 212);
line(200, 150, 600, 250);
line(200, 150, 200, 550);
line(600, 250, 600, 550);
line(200, 250, 600, 350);
line(200, 350, 600, 450);
line(200, 450, 600, 550);
line(200, 350, 600, 250);
line(200, 450, 600, 350);
line(200, 550, 600, 450);
stroke(255, 0, 0);
strokeWeight(10);
fill(0);
ellipse(200, 150, 20, 20);
ellipse(200, 250, 20, 20);
ellipse(200, 350, 20, 20);
ellipse(200, 450, 20, 20);
ellipse(200, 550, 20, 20);
ellipse(600, 250, 20, 20);
ellipse(600, 350, 20, 20);
ellipse(600, 450, 20, 20);
ellipse(600, 550, 20, 20);

for (int i = 0; i<linea.size()-1; i++) {
  line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
 }
 

 if (linea.size()==28){
level=3;
 }
 

M= new PVector(mouseX, mouseY);
if (!P) {

  line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
};
if (!Q && grafol[puntoin][puntofi] != 0) {
  line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
        linea.add(puntoinicial);
        linea.add(puntofinal);
        puntoinicial = puntofinal;
        grafol[puntofi][puntoin]--;
        grafol[puntoin][puntofi]--;
        
 }
 
 break;
}
}
void jugar()
{
}
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

puntos2.add(new PVector(200, 20));
puntos2.add(new PVector(400, 20));
puntos2.add(new PVector(600, 20));
puntos2.add(new PVector(200, 220));
puntos2.add(new PVector(600, 220));
puntos2.add(new PVector(200, 420));
puntos2.add(new PVector(400, 420));
puntos2.add(new PVector(600, 420));

puntos3.add(new PVector(200, 150));
puntos3.add(new PVector(200, 250));
puntos3.add(new PVector(600, 250));
puntos3.add(new PVector(200, 350));
puntos3.add(new PVector(600, 350));
puntos3.add(new PVector(200, 450));
puntos3.add(new PVector(600, 450));
puntos3.add(new PVector(200, 550));
puntos3.add(new PVector(600, 550));
println(puntos3.size());
nodo=20;
P=true;
Q=true;
control=true;
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
  case 3:
  break;
  case 4:
    for (int i=0; i<8; i++) {
  if (mouseX<=(puntos3.get(i).x+10) && mouseX>=(puntos3.get(i).x-10) && mouseY<=(puntos3.get(i).y+10) && mouseY>=(puntos3.get(i).y-10)) {
     if(control==true){
    puntoinicial = puntos3.get(i);
 }
    control=false;
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
  break;
  case 3:
  break;
  case 4:
    for (int i=0; i<8; i++) {
  if (mouseX<=(puntos3.get(i).x+10) && mouseX>=(puntos3.get(i).x-10) && mouseY<=(puntos3.get(i).y+10) && mouseY>=(puntos3.get(i).y-10)) {
    puntofinal = puntos3.get(i);
    Q=false;
    P=true;       
       }
  }
  break;
}
}
