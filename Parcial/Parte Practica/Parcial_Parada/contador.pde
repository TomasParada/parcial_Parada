class Contador {
  int cont;

  void increment() {
    cont++;
  }

  void display() {
    fill(#16BCDB);
    textSize(32);
    text("Monedas: " + cont, 10, 25);
  }
}
