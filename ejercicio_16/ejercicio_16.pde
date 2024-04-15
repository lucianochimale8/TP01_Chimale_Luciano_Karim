float x1=100, y1=100, x2=200, y2=400;
PImage linkImage;
PImage tesoroImage;
float distanciaTesoro=50;

void setup () {
  size(800, 600);
  linkImage = loadImage("link.gif");
  tesoroImage = loadImage("c.gif");
  linkImage.resize(80, 80);
  tesoroImage.resize(80, 80);
}

void draw() {
  background(135, 286, 250);
  float coordenadaX = x2 - x1;
  float coordenadaY = y2 - y1;
  
  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2));
  String textoDistancia = "la distancia es de: " + distancia;
  println(textoDistancia);
  
  if(distancia <= distanciaTesoro) {
   println("¡Power-Up activado!"); 
  }
  
  image(tesoroImage, x2, y2);
  image(linkImage, x1, y1);
  
  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

void mouseMoved() {
  x1=mouseX;
  y1=mouseY;
}
