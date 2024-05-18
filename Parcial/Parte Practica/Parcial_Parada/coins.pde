class Coin {
  float x, y;
  float speedY = 4;
  PImage img;

  Coin(float x, float y) {
    this.x = x;
    this.y = y;
    img = loadImage("coin.png");
    img.resize(50, 50);  //Redimensiona la imagen a 50x50 para que el tamaño original no ocupe todo el lienzo
  }

  void update() {
    y += speedY;  //Actualiza la posición de la moneda
  }

  void display() {
    imageMode(CENTER);
    image(img, x, y);
  }
}
