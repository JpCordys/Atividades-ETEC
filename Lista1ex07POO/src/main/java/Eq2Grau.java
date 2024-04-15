public class Eq2Grau{

  double a, b, c;

  double delta(){
    return b*b - 4*a*c;
  }

  double raiz1(){
    if(delta() >= 0){
    return (-b + Math.sqrt(delta())) / (2*a);
    }
   
  }
  double raiz2(){
    if(delta() >= 0){
    return (-b - Math.sqrt(delta())) / (2*a);
    }
    
  }

  
}