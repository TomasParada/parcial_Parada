PImage backgroundImg;
Spawner spawner;
Contador contador;
ArrayList<Coin> coins = new ArrayList<Coin>();

void setup() {
  size(800, 600);
  backgroundImg = loadImage("background.png");
  backgroundImg.resize(width, height);  // Cambia el tamaño de la imagen al tamaño de la ventana

  spawner = new Spawner(width / 2, 50);
  contador = new Contador();
}

void draw() {
  background(backgroundImg);
  spawner.display();
  spawner.spawnCoins(coins);

  for (int i = coins.size() - 1; i >= 0; i--) {
    Coin coin = coins.get(i);
    coin.update();
    coin.display();
    if (coin.y > height) {
      coins.remove(i);
      contador.increment();
    }
  }

  contador.display();
}



public void keyPressed() {
  if (keyCode == LEFT) {
    spawner.mover(-20);
  } else if (keyCode == RIGHT) {
    spawner.mover(20);
  }
}

public void keyReleased() {
  if (key == LEFT) {
    spawner.mover(-20);
  }
  if (key == RIGHT) {
    spawner.mover(20);
  }
}
