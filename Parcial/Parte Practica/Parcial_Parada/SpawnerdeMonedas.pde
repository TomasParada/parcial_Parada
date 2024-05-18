class Spawner {
  float x, y;

  Spawner(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void mover(float c) {
    x += c;
    x = constrain(x, 0, width);  //Asegura que el spawner no salga de la pantalla
  }

  void spawnCoins(ArrayList<Coin> coins) {
    if (frameCount % 60 == 0) {  //Genera una moneda cada segundo
      coins.add(new Coin(x, y));
    }
  }

  void display() {
    fill(#FFFFFF);
    ellipse(x, y, 3, 3);  //Dibuja el spawner para guiarse desde donde salen las monedas
  }
}
