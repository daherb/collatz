/* Tested with OpenJDK Runtime Environment (build 1.8.0_462-b08) OpenJDK 64-Bit Server VM (build 25.462-b08, mixed mode */
public class collatz_rec {
  public static int collatz_rec(int x) {
    System.out.println(x);
    if (x == 1) return 1;
    else if (x % 2 == 0) return collatz_rec(x / 2);
    else return collatz_rec(3 * x + 1);
  }
  
  public static void main(String[] args) {
    collatz_rec.collatz_rec(Integer.parseInt(args[0]));
  }
}
