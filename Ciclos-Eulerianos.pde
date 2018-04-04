PVector M;
PVector A;
boolean P;
boolean Q;
boolean control;
PVector puntofinal = new PVector(0, 0);
PVector puntoinicial = new PVector(0, 0);
PVector puntoprueba = new PVector(0, 0);
PVector pun= new PVector(0, 0);
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
int[][] grafo7={
  {0, 1, 0, 1, 0, 0, 0, 0}, 
  {1, 0, 1, 1, 1, 0, 0, 0}, 
  {0, 1, 0, 0, 1, 0, 0, 0}, 
  {1, 1, 0, 0, 2, 1, 1, 0}, 
  {0, 1, 1, 2, 0, 0, 1, 1}, 
  {0, 0, 0, 1, 0, 0, 1, 0}, 
  {0, 0, 0, 0, 1, 1, 0, 1}, 
  {0, 0, 0, 0, 1, 0, 1, 0}
};
int[][] grafo8={
  {0, 1, 0, 0, 1, 0, 0, 0, 0, 0}, 
  {1, 0, 0, 0, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 1, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 1, 0, 0, 1, 0, 0, 0, 0}, 
  {0, 1, 1, 0, 0, 2, 0, 1, 0, 0}, 
  {0, 0, 0, 1, 2, 0, 0, 1, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 1, 1, 0}, 
  {0, 0, 0, 0, 1, 1, 1, 0, 0, 1}, 
  {0, 0, 0, 0, 0, 0, 1, 0, 0, 1}, 
  {0, 0, 0, 0, 0, 0, 0, 1, 1, 0}
};
int[][] grafoa = new int[10][10];
int[][] grafod = new int[9][9];
int[][] grafos = new int[8][8];
int[][] grafog = new int[7][7];
int[][] grafoh = new int[6][6];

ArrayList<PVector> puntos = new ArrayList<PVector>();

ArrayList<PVector> puntos2 = new ArrayList<PVector>();

ArrayList<PVector> puntos3 = new ArrayList<PVector>();

ArrayList<PVector> puntos4 = new ArrayList<PVector>();

ArrayList<PVector> puntos5 = new ArrayList<PVector>();

ArrayList<PVector> puntos6 = new ArrayList<PVector>();

ArrayList<PVector> puntos7 = new ArrayList<PVector>();

ArrayList<PVector> puntos8 = new ArrayList<PVector>();

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

//Botón de reinicio
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
      puntofinal=pun;
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
      puntofinal=pun;
    }
  }
}

//Función para ver la linea que se dibuja
void lineamouse() {
  if (!P) {
    line(puntoinicial.x, puntoinicial.y, mouseX, mouseY);
  }
}

//Lineas hechas
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
//Función del mouse presionado
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

//Función de soltar el mouse
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

//Función para pintar las elipses
void dib_elipses(ArrayList<PVector>punticos4, int f) {
  for (int i=0; i<f; i++) {
    ellipse(punticos4.get(i).x, punticos4.get(i).y, nodo, nodo);
  }
}

//Función para pintar lineas
void dib_lineas(int[][] graf, int g, ArrayList<PVector>punticos5) {
  //PVector punto1;
  //PVector punto2;
  for (int i=0; i<g; i++) {
    for (int j=0; j<g; j++) {
      if (graf[i][j]==1) {
        stroke(208, 206, 212);
        line((int)punticos5.get(i).x, (int)punticos5.get(i).y, (int)punticos5.get(j).x, (int)punticos5.get(j).y);
      }
      if (graf[i][j]==2) {
        stroke(100, 100, 100);
        line((int)punticos5.get(i).x, (int)punticos5.get(i).y, (int)punticos5.get(j).x, (int)punticos5.get(j).y);
      }
    }
  }
}

void nivel(int a)
{
  switch(a) {
  case 0:
    background(210, 249, 234);
    strokeWeight(1);
    stroke(0, 0, 0);
    fill(247, 255, 0);
    rect(width/2-155, height*2/4-85, 110, 60, 15);
    rect(width/2-155, height*2/3-90, 110, 60, 15);
    rect(width/2+45, height*2/4-85, 110, 60, 15);
    fill(35, 255, 0);
    rect(width/2+45, height*2/3-90, 110, 60, 15);
    rect(width/2-155, height*3/4-50, 110, 60, 15);
    rect(width/2+45, height*3/4-50, 110, 60, 15);
    fill(255, 182, 0);
    rect(width/2-155, height*3/4+40, 110, 60, 15);
    rect(width/2+45, height*3/4+40, 110, 60, 15);
    fill(0, 0, 0);
    textSize(50);
    textAlign(CENTER);   
    textSize(56);
    text("¡Bienvenido a Connect!", width*1/2, height*1/4 );
    textSize(28);
    //stroke(255, 0, 0);
    fill(0, 0, 0);
    stroke(0, 0, 0);
    fill(0, 0, 0);
    text("Nivel 1", width/2-100, height*2/4-50);
    text("Nivel 2", width/2+100, height*2/4-50);
    text("Nivel 3", width/2-100, height*2/3-50);
    fill(0, 0, 0);
    text("Nivel 5", width/2-100, height*3/4-10);
    text("Nivel 4", width/2+100, height*2/3-50);
    text("Nivel 6", width/2+100, height*3/4-10);
    fill(0, 0, 0);
    text("Nivel 7", width/2-100, height*3/4+80);
    text("Nivel 8", width/2+100, height*3/4+80);
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
    stroke(255, 0, 0);
    strokeWeight(nodo-10);
    fill(0);
    ellipse(width*1/35+65, height*1/2+220, nodo, nodo);    
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
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/4-85<=mouseY && mouseY<=height*2/4-85+60) {
        level=1;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/4-85<=mouseY && mouseY<=height*2/4-85+60) {
        level=2;
      }    
      if (width/2-155<=mouseX && mouseX<=width/2-155+110 && height*2/3-90<=mouseY && mouseY<=height*2/3-90+60) {
        level=4;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*2/3-90<=mouseY && mouseY<=height*2/3-90+60) {
        level=5;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-45 && height*3/4-50<=mouseY && mouseY<=height*3/4-50+60) {
        level=6;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*3/4-50<=mouseY && mouseY<=height*3/4-50+60) {
        level=7;
      }
      if (width/2-155<=mouseX && mouseX<=width/2-45 && height*3/4+40<=mouseY && mouseY<=height*3/4+40+60) {
        level=8;
      }
      if (width/2+45<=mouseX && mouseX<=width/2+45+110 && height*3/4+40<=mouseY && mouseY<=height*3/4+40+60) {
        level=9;
      }
    }
    break;

  case 1: 
    background(255);
    puntoin = puntos.indexOf(puntoinicial);
    puntofi = puntos.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);    
    dib_lineas(grafo1, 10, puntos);
    stroke(255, 0, 0);
    strokeWeight(nodo-10);
    fill(0);
    dib_elipses(puntos, 10);
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
    dib_lineas(grafo2, 8, puntos2);
    stroke(252, 255, 0);
    strokeWeight(nodo-10);
    fill(0);

    dib_elipses(puntos2, 8);
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
    fill(255, 255, 255);
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
    dib_lineas(grafo3, 9, puntos3);
    stroke(81, 254, 0);
    strokeWeight(nodo-10);
    fill(0);
    dib_elipses(puntos3, 9); 

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
    dib_lineas(grafo4, 8, puntos4); 
    stroke(0, 0, 255);
    strokeWeight(nodo-10);
    fill(0);

    dib_elipses(puntos4, 8);  
    if (algo==true) {
      llenar_matriz(grafos, grafo4, 8);
      algo = false;
    }    
    ganar(26);
    lineamouse();
    jugar2(grafos);
    dibujar();
    stroke(50, 255, 0);
    dibujar2();
    reiniciar(grafos, grafo4, 8);
    home();
    break;
  case 6:
    background(255);
    puntoin = puntos5.indexOf(puntoinicial);
    puntofi = puntos5.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    dib_lineas(grafo5, 7, puntos5); 
    stroke(131, 35, 197);
    strokeWeight(nodo-10);
    fill(0);
    dib_elipses(puntos5, 7);
    
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
    dib_lineas(grafo6, 6, puntos6); 
    stroke(0, 224, 225);
    strokeWeight(nodo-10);
    fill(0);
    dib_elipses(puntos6, 6);
    
    if (algo==true) {
      llenar_matriz(grafoh, grafo6, 6);
      algo = false;
    }    
    ganar(18);
    lineamouse();
    jugar2(grafoh);
    dibujar();    
    stroke(255, 0, 0);
    dibujar2();
    reiniciar(grafoh, grafo6, 6);
    home();
    break;
  case 8:
    background(255);
    puntoin = puntos7.indexOf(puntoinicial);
    puntofi = puntos7.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(250, 90, 550, 90);
    line(250, 90, 250, 510);
    line(250, 510, 550, 510);
    line(550, 510, 550, 90);
    line(350, 90, 250, 270);
    line(250, 270, 450, 510);
    line(450, 510, 550, 330);
    line(550, 330, 350, 90);
    fill(208, 206, 212);
    triangle(450-350/3, 370, 430-350/3, 370, 450-350/3, 350);
    stroke(100, 100, 100);
    line(250, 270, 550, 330);
    stroke(255, 158, 0);
    strokeWeight(nodo-10);
    fill(0);

    dib_elipses(puntos7, 8);
    if (algo==true) {
      llenar_matriz(grafos, grafo7, 8);
      algo = false;
    }    
    ganar(28);
    lineamouse();
    jugar2(grafos);
    dibujar();    
    stroke(50, 255, 0);
    dibujar2();
    reiniciar(grafos, grafo7, 8);
    home();
    break;
  case 9:
    background(255);
    puntoin = puntos8.indexOf(puntoinicial);
    puntofi = puntos8.indexOf(puntofinal);
    strokeWeight(8);
    stroke(208, 206, 212);
    line(250, 100, 550, 100);
    line(250, 100, 400, 300);
    line(550, 100, 400, 300);
    line(400, 200, 400, 500);
    line(200, 400, 200, 500);
    line(200, 400, 400, 400);
    line(200, 500, 400, 500);
    line(400, 200, 600, 200);
    line(600, 300, 600, 200);
    line(600, 300, 400, 400);
    fill(208, 206, 212);
    triangle(340, 220, 340, 200, 320, 220);
    stroke(100, 100, 100);
    line(400, 300, 600, 300);
    stroke(255, 0, 232);
    strokeWeight(nodo-10);
    fill(0);
    dib_elipses(puntos8, 10);

    if (algo==true) {
      llenar_matriz(grafoa, grafo8, 10);
      algo = false;
    }    
    ganar(28);
    lineamouse();
    jugar2(grafoa);
    dibujar();    
    stroke(255, 220, 0);
    dibujar2();
    reiniciar(grafoa, grafo8, 10);
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

  puntos7.add(new PVector(250, 90));
  puntos7.add(new PVector(350, 90));
  puntos7.add(new PVector(550, 90));
  puntos7.add(new PVector(250, 270));
  puntos7.add(new PVector(550, 330));
  puntos7.add(new PVector(250, 510));
  puntos7.add(new PVector(450, 510));
  puntos7.add(new PVector(550, 510));

  puntos8.add(new PVector(250, 100));
  puntos8.add(new PVector(550, 100));
  puntos8.add(new PVector(400, 200));
  puntos8.add(new PVector(600, 200));
  puntos8.add(new PVector(400, 300));
  puntos8.add(new PVector(600, 300));
  puntos8.add(new PVector(200, 400));
  puntos8.add(new PVector(400, 400));
  puntos8.add(new PVector(200, 500));
  puntos8.add(new PVector(400, 500));

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
  case 8:
    mouse1(puntos7, 8);
    break;
  case 9:
    mouse1(puntos8, 10);
    break;
  }
}
void mouseReleased () {
  switch(level) {
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
  case 8:
    mouse2(puntos7, 8);
    break;
  case 9:
    mouse2(puntos8, 10);
    break;
  }
}
