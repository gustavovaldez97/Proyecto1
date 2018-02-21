//head
import processing.sound.*;
int pantalla = 0;
float[] jugador1;
float[] jugador2;
float[] char1=new float[2];
float[] char2=new float[2];
float[] char3=new float[2];
float[] char4=new float[2];
float[] char5=new float[2];
float vida1=20;
float vida2=20;
int turno=0;
int seleccion=0;
luchador agua;
luchador fuego;
luchador tierra;
luchador aire;
luchador rayo;
SoundFile main;

//setup
void setup(){
  size(600,400);
  main = new SoundFile(this, "main.mp3");
  agua = new luchador("Mujer1",3,3,0,150,133);
  fuego = new luchador("Hombre1",5,3,1,275,160);
  tierra = new luchador("Mujer2",2,5,2,450,133);
  aire = new luchador("Hombre2",4,3,3,200,266);
  rayo = new luchador("Hombre3",5,2,4,400,266);
  char1[0]=3;
  char1[1]=3;
  char2[0]=5;
  char2[1]=3;
  char3[0]=2;
  char3[1]=5;
  char4[0]=4;
  char4[1]=3;
  char5[0]=5;
  char5[1]=2;
  main.loop();
}  

//draw
void draw(){
  
  if(pantalla==0){
    pantallaInicio();
  }
  if(pantalla==1){
    pantallaSelect();
  }
  if(pantalla==2){
    pantallaCombat();
  }
  if(pantalla==3){
    pantallaResult();
  }
}

// pantallas

void pantallaInicio(){
  //que hay en la pantalla de inicio
  background(0);
  fill(#7F158F);
  triangle(100,100,500,150,300,350);
  textSize(30);
  fill(#FF00FC);
  textAlign(CENTER, TOP);
  text("FORBIDDEN",300,125);
  textSize(100);
  fill(#3557C6);
  textAlign(CENTER, CENTER);
  text("COLLISEUM",300,200);
   textSize(25);
  fill(255);
  textAlign(LEFT, BOTTOM);
  text("Haga click para iniciar", 200,400);
}

void pantallaSelect(){
  //que hay en la segunda pantalla
  background(#FF9B9B);
  fill(#3557C6);
  textSize(20);
  textAlign(LEFT,CENTER);
  text("Selecciona a tu luchador",200,50);
  agua.display();
  fuego.display();
  tierra.display();
  aire.display();
  rayo.display();
  fill(#A70761);
  textSize(15);
  textAlign(LEFT,CENTER);
  text("1/6.Agua",150,133);
  textAlign(LEFT,CENTER);
  text("2/7.Fuego",300,133);
  textAlign(LEFT,CENTER);
  text("3/8.Tierra",450,133);
  textAlign(LEFT,CENTER);
  text("4/9.Aire",200,266);
  textAlign(LEFT,CENTER);
  text("5/0.Rayo",400,266);
  textSize(15);
  fill(255);
  textAlign(LEFT, BOTTOM);
  text("El jugador 1 selecciona \ncon las teclas del 1  al 5", 5, 375);
  textAlign(LEFT, BOTTOM);
  text("El jugador 2 selecciona \ncon las teclas del 6  al 0", 405, 375);
  }
  
  

void pantallaCombat(){
  //que hay en la tercera pantalla
  background(0);
  fill(#FFBA79);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 500, 300);
  translate(15, 20);
  pushMatrix();
  if(jugador1==char1){
    agua.display();
  }else if(jugador1==char2){
    fuego.display();
  }else if(jugador1==char3){
    tierra.display();
  }else if(jugador1==char4){
    aire.display();
  }else if(jugador1==char5){
    rayo.display();
  }
  popMatrix();
  fill(255,0,0);
  rect(100,200,vida1*10,10);
  
  translate(40, 20);
  pushMatrix();
  if(jugador2==char1){
    agua.display();
  }else if(jugador2==char2){
    fuego.display();
  }else if(jugador2==char3){
    tierra.display();
  }else if(jugador2==char4){
    aire.display();
  }else if(jugador2==char5){
    rayo.display();
  }
  popMatrix();
  fill(255,0,0);
  rect(400,180,vida2*10,10);
  
  textSize(15);
  fill(255);
  text("Jugador1 ataca con TAB", 10,10);
   fill(255);
  text("Jugador2 ataca con ENTER", 300,10);
}

void pantallaResult(){
  //que hay en la cuarta pantalla
  background(0);
  fill(#7F158F);
  triangle(100,100,500,150,300,350);
  if(vida1<=0){
    textSize(40);
    fill(255);
    textAlign(LEFT, CENTER);
    text("El jugador 2 \n ha ganado",200,200);
  }else if(vida2<=0){
    textSize(40);
    fill(255);
    textAlign(LEFT, CENTER);
    text("El jugador 1 \n ha ganado",200,200);
  }
  textSize(25);
  fill(255);
  textAlign(LEFT, BOTTOM);
  text("Haga click para reiniciar", 200,400);
}

void mousePressed(){
  if(pantalla==0){
      seleccion();
  }
  if (pantalla==3){
    restart();
  }
}

void keyPressed(){
  if(pantalla==1){
    switch(key){
    case '1':
    jugador1=char1;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '2':
    jugador1=char2;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '3':
    jugador1=char3;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '4':
    jugador1=char4;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '5':
    jugador1=char5;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '6':
    jugador2=char1;
    pantalla=2;
    println("jugador2 seleccionado");
    break;
    case'7':
    jugador2=char2;
    pantalla=2;
    println("jugador2 seleccionado");
    break;
    case '8':
    jugador2=char3;
    pantalla=2;
    println("jugador2 seleccionado");
    break;
    case '9':
    jugador2=char4;
    pantalla=2;
    println("jugador2 seleccionado");
    case '0':
    jugador2=char5;
    pantalla=2;  
    println("jugador2 seleccionado");
    println("turno del jugador1");
    break;
    }
 }       
   if(pantalla==2){
     if(turno==0){
      if(key==TAB){
        fill(0,255,0);
        rect(10,10,20,20); 
        damage1();
         turno=1;
         println("Turno del jugador 2");
        }
      }else if(turno==1){
        if(key==ENTER){
        fill(0,0,255);
        rect(400,10,20,20); 
          damage2();
          println("Turno del jugador 1");
          turno=0; 
        }
      }
   }
}



void seleccion(){
  pantalla=1;
}

void combate(){
  pantalla=2;
}

void resolucion(){
  pantalla=3;
}


void damage1(){
  vida2-=jugador1[0]/jugador2[1];
  if(vida2<=0){
    resolucion();
  }
}

void damage2(){
    vida1-=jugador2[0]/jugador1[1];
    if(vida1<=0){
    resolucion();
  }
}

void restart(){
  vida1=20;
  vida2=20;
  turno=0;
  pantalla=0;
}