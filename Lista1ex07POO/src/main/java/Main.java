
public class Main {
  public static void main(String[] args) {
    Eq2Grau eq = new Eq2Grau();

    // alimentar
    System.out.println("Digite o valor de a: ");
    eq.a = Double.parseDouble(System.console().readLine());

    System.out.println("Digite o valor de b: ");
    eq.b = Double.parseDouble(System.console().readLine());

    System.out.println("Digite o valor de c: ");
    eq.c = Double.parseDouble(System.console().readLine());

    // exibir
    if (eq.delta() >= 0) {
      System.out.println("Delta: " + eq.delta());
      System.out.println("Raiz 1: " + eq.raiz1());
      System.out.println("Raiz 2: " + eq.raiz2());
    } else {
      System.out.println("Delta: " + eq.delta());
      System.out.println("Não há raizes reais dentre os valores recebidos.");
    }
  }

}