public class Churrasco {
  double qtdCarne;
  int idade;
  boolean vegetariano;

  public Churrasco(int idd, boolean veg){
    idade = idd;
    vegetariano = veg;
  }
  
  double verificarConsumo() {

    if (idade <= 3 || vegetariano) {
      qtdCarne = 0;
    } else if (idade <= 12) {
      qtdCarne = 1;
    } else {
      qtdCarne = 2;
    }

    return qtdCarne;
  }

}