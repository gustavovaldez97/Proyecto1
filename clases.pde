class luchador{
  String nombre;
  int atk;
  int def;
  int elemento;
  int x,y;
  
  luchador(String nombre_, int atk_, int def_, int elemento_, int x_, int y_){
    nombre=nombre_;
    atk=atk_;
    def=def_;
    elemento=elemento_;
    x=x_;
    y=y_;
  }
  
  
  void poligono(float x, float y, float radio, int npoints) {
      float angulo = TWO_PI / npoints;
      beginShape();
    for (float a = 0; a < TWO_PI; a += angulo) {
      float sx = x + cos(a) * radio;
      float sy = y + sin(a) * radio;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
 
  void display(){
    switch (elemento){
      case 0:
      fill(#798EFF);
      poligono(x, y, 30, 6);
      break;
      case 1:
      fill(#FF5558);
      triangle(x,y,x+28,y-55,x+56,y);
      break;
      case 2:
      fill(#FFF155);
      rectMode(CENTER);
      rect(x,y,50,50);
      break;
      case 3:
      fill(#70FF55);
      poligono(x, y, 30, 6);
      break;
      case 4:
      fill(#FF7CE3);
      poligono(x, y, 30, 12);
      break;
    }
  }
}