PVector M;
PVector A;
boolean P;
boolean Q;
boolean control;
PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);
PVector puntoprueba = new PVector(0, 0);
int level = 0;
int puntoin;
int puntofi;
int nodo;
int pruebamouse;
boolean algo = true;

int[][] grafo1 ={
  {0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
  {1, 0, 1, 1, 0, 0, 0, 0, 0, 0}, 
  {0, 1, 0, 0, 0, 0, 0, 0, 0, 1}, 
  {0, 1, 0, 0, 1, 1, 1, 0, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 0, 1, 1, 1, 0, 0, 1, 0}, 
  {1, 0, 0, 0, 0, 0, 0, 0, 1, 0}, 
  {0, 0, 0, 0, 0, 0, 1, 1, 0, 1}, 
  {0, 0, 1, 0, 0, 0, 0, 0, 1, 0}
};
int[][] grafo2 ={
  {0, 1, 0, 1, 0, 0, 0, 0}, 
  {1, 0, 1, 1, 1, 1, 1, 0}, 
  {0, 1, 0, 0, 1, 1, 1, 0}, 
  {1, 1, 0, 0, 1, 1, 0, 0}, 
  {0, 1, 1, 1, 0, 0, 0, 1}, 
  {0, 1, 1, 1, 0, 0, 1, 0}, 
  {0, 1, 1, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 0, 1, 0, 1, 0}
};
int[][] grafo3={
  {0, 1, 1, 0, 0, 0, 0, 0, 0}, 
  {1, 0, 0, 1, 1, 0, 0, 0, 0}, 
  {1, 0, 0, 1, 1, 0, 0, 0, 0}, 
  {0, 1, 1, 0, 0, 1, 1, 0, 0}, 
  {0, 1, 1, 0, 0, 1, 1, 0, 0}, 
  {0, 0, 0, 1, 1, 0, 0, 1, 1}, 
  {0, 0, 0, 1, 1, 0, 0, 1, 1}, 
  {0, 0, 0, 0, 0, 1, 1, 0, 0}, 
  {0, 0, 0, 0, 0, 1, 1, 0, 0}
};
int[][] grafo4={  
  {0, 0, 2, 1, 0, 0, 0, 0}, 
  {0, 0, 0, 1, 0, 1, 0, 0}, 
  {2, 0, 0, 1, 1, 0, 1, 0}, 
  {1, 1, 1, 0, 0, 1, 0, 0}, 
  {0, 0, 1, 0, 0, 1, 1, 1}, 
  {0, 1, 0, 1, 1, 0, 0, 1}, 
  {0, 0, 1, 0, 1, 0, 0, 0}, 
  {0, 0, 0, 0, 1, 1, 0, 0}
};
int[][] grafo5={
  {0, 1, 1, 0, 0, 0, 0}, 
  {1, 0, 1, 1, 1, 0, 0}, 
  {1, 1, 0, 1, 0, 0, 1}, 
  {0, 1, 1, 0, 0, 2, 0}, 
  {0, 1, 0, 0, 0, 1, 0}, 
  {0, 0, 0, 2, 1, 0, 1}, 
  {0, 0, 1, 0, 0, 1, 0}
};
int[][] grafo6={
  {0, 1, 0, 0, 1, 0}, 
  {1, 0, 1, 0, 0, 2}, 
  {0, 1, 0, 1, 0, 1}, 
  {0, 0, 1, 0, 1, 1}, 
  {1, 0, 0, 1, 0, 0}, 
  {0, 2, 1, 1, 0, 0}
};
int[][] grafoa = new int[10][10];
int[][] grafos = new int[8][8];
int[][] grafod = new int[9][9];
int[][] grafof = new int[8][8];
int[][] grafog = new int[7][7];
int[][] grafoh = new int[6][6];

ArrayList<PVector> puntos = new ArrayList<PVector>();

ArrayList<PVector> puntos2 = new ArrayList<PVector>();

ArrayList<PVector> puntos3 = new ArrayList<PVector>();

ArrayList<PVector> puntos4 = new ArrayList<PVector>();

ArrayList<PVector> puntos5 = new ArrayList<PVector>();

ArrayList<PVector> puntos6 = new ArrayList<PVector>();

ArrayList<PVector> linea = new ArrayList<PVector>();

ArrayList<PVector> linea2 = new ArrayList<PVector>();

//Función de llenar matrices de grafos
void llenar_matriz(int[][] grafito1, int[][]grafito2, int a) {
  for (int i = 0; i<a; i++) {
    for (int j = 0; j<a; j++) {
      grafito1[i][j] = grafito2[i][j];
    }
  }
}

//botón de reinicio
void reiniciar(int[][] grafito3, int[][] grafito4, int z) {
  strokeWeight(2);
  stroke(0, 0, 0);
  fill(41, 74, 255);
  ellipse(710, 40, 35, 35);
  stroke(255, 255, 255);
  fill(255, 255, 255);
  triangle(699, 41, 702, 44, 705, 41);
  noFill(); 
  strokeWeight(3);
  arc(710, 40, 15, 15, -PI, PI/2);
  if (mousePressed) {
    if (710-17<=mouseX && mouseX<=710+17 && 40-17<=mouseY && mouseY<=40+17) {
      for (int i = linea.size() - 1; i >= 0; i--) {
        linea.remove(i);
      }
      for (int i = linea2.size() - 1; i >= 0; i--) {
        linea2.remove(i);
      }
      llenar_matriz(grafito3, grafito4, z);
      control=true;
      puntofi=-1;
      puntoin=-1;
      algo=true; 
      //puntoinicial.x=0;
      //puntoinicial.y=0;
    }
  }
}

//Botón de volver al menú
void home() {
  strokeWeight(2);
  stroke(0, 0, 0);
  fill(41, 74, 255);
  ellipse(760, 40, 35, 35);
  stroke(255, 255, 255);
  fill(255, 255, 255);
  rect(755, 37, 10, 10, 1);
  triangle(753, 37, 767, 37, 760, 31);
  if (mousePressed) {
    if (760-17<=mouseX && mouseX<=760+17 && 40-17<=mouseY && mouseY<=40+17) {
      level=0;
      for (int i = linea.size() - 1; i >= 0; i--) {
        linea.remove(i);
      }
      for (int i = linea2.size() - 1; i >= 0; i--) {
        linea2.remove(i);
      }
      control=true;
      puntofi=-1;
      puntoin=-1;
      algo=true;
    }
  }
}

//Función para ver la linea que se dibuja
void lineamouse() {
  if (!P) {
    line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
  }
}

//lineas hechas
void dibujar() {
  for (int i = 0; i<linea.size()-1; i++) {
    line(linea.get(i).x, linea.get(i).y, linea.get(i+1).x, linea.get(i+1).y);
  }
}

//Lineas de camino donde se pueden dibujar dos veces

void dibujar2() {
  for (int i = 0; i<linea2.size()-1; i++) {
    line(linea2.get(i).x, linea2.get(i).y, linea2.get(i+1).x, linea2.get(i+1).y);
  }
}

//Función de ganar
void ganar(int c) {
  if (linea.size()==c) {
    level=3;
  }
}

//Función del juego
void jugar(int[][] grafito7) {
  if (puntoin!=-1 && puntofi!=-1) {
    if (!Q && grafito7[puntoin][puntofi] != 0) {
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
      linea.add(puntoinicial);
      linea.add(puntofinal);
      grafito7[puntofi][puntoin] = grafito7[puntofi][puntoin]-1;
      grafito7[puntoin][puntofi] = grafito7[puntoin][puntofi]-1;
      control=false;
      if (linea.size()>1) {         
        puntoinicial = puntofinal;
      }
    }
  }
}

//Función del juego para niveles con doble linea
void jugar2(int[][] grafito8) {
  if (puntoin!=-1 && puntofi!=-1) {
    if (!Q && grafito8[puntoin][puntofi] == 1) {      
      PVector prueba = puntoinicial;
      PVector prueba2 = puntofinal;
      for (int i=0; i<linea2.size()-1; i++) {
        if (linea2.indexOf(prueba)!=-1 && linea2.indexOf(prueba2)!=-1 ) {
          linea2.remove(prueba);
          linea2.remove(prueba2);
        }
      }
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
      linea.add(puntoinicial);
      linea.add(puntofinal);
      grafito8[puntofi][puntoin] = grafito8[puntofi][puntoin]-1;
      grafito8[puntoin][puntofi] = grafito8[puntoin][puntofi]-1;
      control=false;
      if (linea.size()>1) {         
        puntoinicial = puntofinal;
      }
    }
    if (!Q && grafito8[puntoin][puntofi] == 2) {
      line(puntoinicial.x, puntoinicial.y, puntofinal.x, puntofinal.y);
      linea2.add(puntoinicial);
      linea2.add(puntofinal);
      linea.add(puntoinicial);
      linea.add(puntofinal);
      grafito8[puntofi][puntoin] = grafito8[puntofi][puntoin]-1;
      grafito8[puntoin][puntofi] = grafito8[puntoin][puntofi]-1;
      control=false;
      if (linea.size()>1) {         
        puntoinicial = puntofinal;
      }
    }
  }
}
//función del mouse presionado
void mouse1(ArrayList<PVector>punticos, int d) {
  for (int i=0; i<d; i++) {
    if (mouseX<=(punticos.get(i).x+nodo) && mouseX>=(punticos.get(i).x-nodo) && mouseY<=(punticos.get(i).y+nodo) && mouseY>=(punticos.get(i).y-nodo)) {
      switch(pruebamouse) {
        case 0:
        if (control==true) {
          puntoinicial = punticos.get(i);
      }
      P=false;
        break;
        case 1:
        pruebamouse=0;
        break;
      }
    }
  }
}

//Funcion de soltar el mouse
void mouse2(ArrayList<PVector>punticos2, int e) {
  for (int i=0; i<e; i++) {
    if (mouseX<=(punticos2.get(i).x+nodo) && mouseX>=(punticos2.get(i).x-nodo) && mouseY<=(punticos2.get(i).y+nodo) && mouseY>=(punticos2.get(i).y-nodo)) {
      puntoprueba = punticos2.get(i);
      if (puntoinicial.x!=puntoprueba.x || puntoinicial.y!=puntoprueba.y) {
        puntofinal = punticos2.get(i);
        Q=false;
        P=true;
        pruebamouse=0;
      }
      if (puntoinicial.x==puntoprueba.x && puntoinicial.y==puntoprueba.y) {
        P=true;
        pruebamouse=1;
      }
    }
  }
}


void nivel(int a)
{
  switch(a) {
  case 0:
    background(210, 249, 234);
    //background(0, 255, 255);
    strokeWeight(1);
    stroke(0, 0, 0);
    fill(247, 255, 0);
    rect(width/2-155, height*2/4-70/2, 110, 60, 15);
    rect(width/2-155, height*2/3-40, 110, 60, 15);
    rect(width/2+45, height*2/4-70/2, 110, 60, 15);
    fill(35, 255, 0);
    rect(width/2+45, height*2/3-40, 110, 60, 15);
    rect(width/2-155, height*3/4, 110, 60, 15);
    rect(width/2+45, height*3/4, 110, 60, 15);
    fill(0,0,0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    text("¡Bienvenido a Connect!", width*1/2, height*1/4 );
    textSize(28);
    //stroke(255, 0, 0);
    fill(0, 0, 0);
    stroke(0, 0, 0);
    fill(0, 0, 0);
    text("Nivel 1", width/2-100, height*2/4);
    text("Nivel 2", width/2+100, height*2/4);
    text("Nivel 3", width/2-100, height*2/3);
    fill(0, 0, 0);
    text("Nivel 5", width/2-100, height*3/4+40);
    text("Nivel 4", width/2+100, height*2/3);
    text("Nivel 6", width/2+100, height*3/4+40);
    textAlign(CENTER);
    textSize(16);
    fill(0, 0, 0);
    text("Elija el tamaño", width*1/9, height*2/4+30);
    text("de los nodos:", width*1/9, height*2/4+45);
    //fill(131, 0, 211);
    fill(0, 0, 255);
    rect(width*1/35, height*2/4+80, 30, 30);
    rect(width*1/35+50, height*2/4+80, 30, 30);
    rect(width*1/35+100, height*2/4+80, 30, 30);
    rect(width*1/35, height*2/4+130, 30, 30);
    rect(width*1/35+50, height*2/4+130, 30, 30);
    rect(width*1/35+100, height*2/4+130, 30, 30);
    fill(255, 255, 255);
    text("20", width*1/35+15, height*2/4+100);
    text("25", width*1/35+65, height*2/4+100);
    text("30", width*1/35+115, height*2/4+100);
    text("35", width*1/35+15, height*2/4+150);
    text("40", width*1/35+65, height*2/4+150);
    text("45", width*1/35+115, height*2/4+150);
    if (mousePressed) {
      if (width*1/35<=mouseX && mouseX<=width*1/35+30 && height*2/4+80<=mouseY && mouseY<=height*2/4+110) {
        nodo=20;
        println (nodo);
      }
      if (width*1/35+50<=mouseX && mouseX<=width*1/35+80 && height*2/4+80<=mouseY && mouseY<=height*2/4+110) {
        nodo=25;
        println (nodo);
      }
      if (width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+80<=mouseY && mouseY<=height*2/4+110) {
        nodo=30;
        println (nodo);
      }
      if (width*1/35<=mouseX && mouseX<=width*1/35+30 && height*2/4+130<=mouseY && mouseY<=height*2/4+160) {
        nodo=35;
        println (nodo);
      }
      if (width*1/35+30<=mouseX && mouseX<=width*1/35+80 && height*2/4+130<=mouseY && mouseY<=height*2/4+160) {
        nodo=40;
        println (nodo);
      }
      if (width*1/35+100<=mouseX && mouseX<=width*1/35+130 && height*2/4+130<=mouseY && mouseY<=height*2/4+160) {
        nodo=45;
        println (nodo);
      }
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/4-70/2<=mouseY && mouseY<=height*2/4-70/2+60) {
        level=1;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/4-70/2<=mouseY && mouseY<=height*2/4-70/2+60) {
        level=2;
      }    
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/3-40<=mouseY && mouseY<=height*2/3-40+60) {
        level=4;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/3-40<=mouseY && mouseY<=height*2/3-40+60) {
        level=5;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-45 && height*3/4<=mouseY && mouseY<=height*3/4+60) {
        level=6;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*3/4<=mouseY && mouseY<=height*3/4+60) {
        level=7;
      }
    }

    break;
  case 1: 
    background(255);
    puntoin = puntos.indexOf(puntoinicial);
    puntofi = puntos.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(200, 100, 600, 100);
    line(200, 100, 200, 500);
    line(400, 100, 400, 500);
    line(200, 500, 600, 500);
    line(600, 100, 600, 500);
    line(400, 400, 300, 300);
    line(300, 300, 400, 200);
    line(400, 200, 500, 300);
    line(500, 300, 400, 400);
    stroke(255, 0, 0);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(400, 100, nodo, nodo);
    ellipse(200, 100, nodo, nodo);
    ellipse(200, 500, nodo, nodo);
    ellipse(400, 500, nodo, nodo);
    ellipse(400, 400, nodo, nodo);
    ellipse(300, 300, nodo, nodo);
    ellipse(400, 200, nodo, nodo);
    ellipse(500, 300, nodo, nodo);
    ellipse(600, 100, nodo, nodo);
    ellipse(600, 500, nodo, nodo);

    if (algo==true) {
      llenar_matriz(grafoa, grafo1, 10);
      algo = false;
    }
    ganar(26);
    dibujar();
    lineamouse(); 
    jugar(grafoa);
    reiniciar(grafoa, grafo1, 10);
    home();
    break;

  case 2:      
    background(255);
    puntoin = puntos2.indexOf(puntoinicial);
    puntofi = puntos2.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(200, 100, 600, 100);
    line(200, 100, 200, 500);
    line(400, 100, 400, 500);
    line(200, 500, 600, 500);
    line(600, 100, 600, 500);
    line(200, 300, 600, 300);
    line(400, 100, 200, 300);
    line(400, 100, 200, 500);
    line(600, 100, 200, 500);
    line(600, 100, 400, 500);
    line(400, 100, 600, 300);
    stroke(252, 255, 0);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(400, 100, nodo, nodo);
    ellipse(200, 100, nodo, nodo);
    ellipse(200, 500, nodo, nodo);
    ellipse(400, 500, nodo, nodo);
    ellipse(600, 100, nodo, nodo);
    ellipse(600, 500, nodo, nodo);
    ellipse(200, 300, nodo, nodo);
    ellipse(600, 300, nodo, nodo);

    if (algo==true) {
      llenar_matriz(grafos, grafo2, 8);
      algo = false;
    }
    ganar(30);
    dibujar();
    jugar(grafos);
    lineamouse();
    reiniciar(grafos, grafo2, 8);
    home();
    break;
  case 3: 
    background(55, 84, 243);
    strokeWeight(1);
    stroke(0);
    //fill(80);
    //quad(0, 0, 800, 0, 800, 800, 0, 800);
    fill(255,255,255);
    textAlign(CENTER);
    textSize(56);
    text("GANASTE!!", width/2, height/2);
    fill(55, 243, 66);
    rect(width/2-220/2, height*1/6-70/2, 220, 60, 15);      
    fill(0);
    textAlign(CENTER);
    textSize(28);
    text("Volver al menú", width/2, height*1/6);
    control=true;
    P=true;
    Q=true;
    algo=true;
    if (mousePressed ) {
      if (width/2-210/2<=mouseX && mouseX<=width/2-210/2+210 && height*1/6-70/2<=mouseY && mouseY<=height*1/6-70/2+60) {
        level=0;
        for (int i = linea.size() - 1; i >= 0; i--) {
          linea.remove(i);
        }
      }
    }
    break;
  case 4:
    background(255);
    puntoin = puntos3.indexOf(puntoinicial);
    puntofi = puntos3.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(200, 50, 600, 150);
    line(200, 50, 200, 450);
    line(600, 150, 600, 450);
    line(200, 150, 600, 250);
    line(200, 250, 600, 350);
    line(200, 350, 600, 450);
    line(200, 250, 600, 150);
    line(200, 350, 600, 250);
    line(200, 450, 600, 350);
    stroke(81, 254, 0);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(200, 50, nodo, nodo);
    ellipse(200, 150, nodo, nodo);
    ellipse(200, 250, nodo, nodo);
    ellipse(200, 350, nodo, nodo);
    ellipse(200, 450, nodo, nodo);
    ellipse(600, 150, nodo, nodo);
    ellipse(600, 250, nodo, nodo);
    ellipse(600, 350, nodo, nodo);
    ellipse(600, 450, nodo, nodo);
    if (algo==true) {
      llenar_matriz(grafod, grafo3, 9);
      algo = false;
    }    
    ganar(28);
    dibujar();
    jugar(grafod);
    lineamouse();
    reiniciar(grafod, grafo3, 9);
    home();
    break;
  case 5:
    background(255);
    puntoin = puntos4.indexOf(puntoinicial);
    puntofi = puntos4.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(250, 150, 450, 250);
    line(250, 450, 350, 350);
    line(250, 450, 350, 250);
    line(550, 450, 350, 350);
    line(550, 450, 450, 350);
    line(550, 150, 450, 350);
    line(550, 150, 450, 250);
    line(350, 250, 450, 250);
    line(350, 350, 450, 350);
    line(350, 250, 350, 350);
    line(450, 250, 450, 350);
    stroke(100, 100, 100);
    line(250, 150, 350, 250);
    stroke(0, 0, 255);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(250, 150, nodo, nodo);
    ellipse(550, 150, nodo, nodo);
    ellipse(350, 250, nodo, nodo);
    ellipse(450, 250, nodo, nodo);
    ellipse(350, 350, nodo, nodo);
    ellipse(450, 350, nodo, nodo);
    ellipse(250, 450, nodo, nodo);
    ellipse(550, 450, nodo, nodo);
    if (algo==true) {
      llenar_matriz(grafof, grafo4, 8);
      algo = false;
    }    
    ganar(26);
    lineamouse();
    jugar2(grafof);
    dibujar();
    stroke(50, 255, 0);
    dibujar2();
    reiniciar(grafof, grafo4, 8);
    home();
    break;
  case 6:
    background(255);
    puntoin = puntos5.indexOf(puntoinicial);
    puntofi = puntos5.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(400, 150, 300, 450);
    line(400, 150, 500, 450);
    line(300, 450, 500, 450);
    line(400-100/3, 250, 400+100/3, 250);
    line(400-100/3, 250, 400, 350);
    line(400+100/3, 250, 400, 350);
    stroke(100, 100, 100);    
    line(400, 350, 400, 450);
    stroke(131, 35, 197);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(400, 150, nodo, nodo);
    ellipse(400-100/3, 250, nodo, nodo);
    ellipse(300, 450, nodo, nodo);
    ellipse(400, 450, nodo, nodo);
    ellipse(400, 350, nodo, nodo);
    ellipse(400+100/3, 250, nodo, nodo);
    ellipse(500, 450, nodo, nodo);
    if (algo==true) {
      llenar_matriz(grafog, grafo5, 7);
      algo = false;
    }    
    ganar(22);
    lineamouse();
    jugar2(grafog);
    dibujar();    
    stroke(255, 131, 0);
    dibujar2();
    reiniciar(grafog, grafo5, 7);
    home();
    break;
  case 7:
    background(255);
    puntoin = puntos6.indexOf(puntoinicial);
    puntofi = puntos6.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(200, 100, 200, 500);
    line(200, 500, 600, 500);
    line(200, 100, 600, 500);
    line(500, 200, 400, 500);
    line(500, 200, 200, 500);
    stroke(100, 100, 100);
    line(500, 200, 200, 300);
    stroke(255, 0, 0);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(200, 100, nodo, nodo);
    ellipse(200, 300, nodo, nodo);
    ellipse(200, 500, nodo, nodo);
    ellipse(400, 500, nodo, nodo);
    ellipse(600, 500, nodo, nodo);
    ellipse(500, 200, nodo, nodo);
    if (algo==true) {
      llenar_matriz(grafoh, grafo6, 6);
      algo = false;
    }    
    ganar(18);
    lineamouse();
    jugar2(grafoh);
    dibujar();    
    stroke(50, 255, 0);
    dibujar2();
    reiniciar(grafoh, grafo6, 6);
    home();
    break;
  }
}
void setup() {
  size(800, 600);
  puntos.add(new PVector(200, 100));
  puntos.add(new PVector(400, 100));
  puntos.add(new PVector(600, 100));
  puntos.add(new PVector(400, 200));
  puntos.add(new PVector(300, 300));
  puntos.add(new PVector(500, 300));
  puntos.add(new PVector(400, 400));
  puntos.add(new PVector(200, 500));
  puntos.add(new PVector(400, 500));
  puntos.add(new PVector(600, 500));

  puntos2.add(new PVector(200, 100));
  puntos2.add(new PVector(400, 100));
  puntos2.add(new PVector(600, 100));
  puntos2.add(new PVector(200, 300));
  puntos2.add(new PVector(600, 300));
  puntos2.add(new PVector(200, 500));
  puntos2.add(new PVector(400, 500));
  puntos2.add(new PVector(600, 500));

  puntos3.add(new PVector(200, 50));
  puntos3.add(new PVector(200, 150));
  puntos3.add(new PVector(600, 150));
  puntos3.add(new PVector(200, 250));
  puntos3.add(new PVector(600, 250));
  puntos3.add(new PVector(200, 350));
  puntos3.add(new PVector(600, 350));
  puntos3.add(new PVector(200, 450));
  puntos3.add(new PVector(600, 450));

  puntos4.add(new PVector(250, 150));
  puntos4.add(new PVector(550, 150));
  puntos4.add(new PVector(350, 250));
  puntos4.add(new PVector(450, 250));
  puntos4.add(new PVector(350, 350));
  puntos4.add(new PVector(450, 350));
  puntos4.add(new PVector(250, 450));
  puntos4.add(new PVector(550, 450));

  puntos5.add(new PVector(400, 150));
  puntos5.add(new PVector(400-100/3, 250));
  puntos5.add(new PVector(400+100/3, 250));
  puntos5.add(new PVector(400, 350));
  puntos5.add(new PVector(300, 450));
  puntos5.add(new PVector(400, 450));
  puntos5.add(new PVector(500, 450));

  puntos6.add(new PVector(200, 100));
  puntos6.add(new PVector(200, 300));
  puntos6.add(new PVector(200, 500));
  puntos6.add(new PVector(400, 500));
  puntos6.add(new PVector(600, 500));
  puntos6.add(new PVector(500, 200));
  nodo=20;
  P=true;
  Q=true;
  control=true;
}

void draw() {
  nivel(level);
}

void mousePressed () { 
  switch(level) {
  case 1:
    mouse1(puntos, 10);
    break;
  case 2:
    mouse1(puntos2, 8);
    break;
  case 4:
    mouse1(puntos3, 9);
    break;
  case 5:
    mouse1(puntos4, 8);
    break;
  case 6:
    mouse1(puntos5, 7);
    break;
  case 7:
    mouse1(puntos6, 6);
    break;
  }
}
void mouseReleased () {
  switch(level) {
  case 0:

    break;
  case 1:
    mouse2(puntos, 10);
    break;
  case 2:
    mouse2(puntos2, 8);
    break;  
  case 4:
    mouse2(puntos3, 9);
    break;
  case 5:
    mouse2(puntos4, 8);
    break;
  case 6:
    mouse2(puntos5, 7);
    break;
  case 7:
    mouse2(puntos6, 6);
    break;
  }
}
