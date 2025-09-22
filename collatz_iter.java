/* Tested with OpenJDK Runtime Environment (build 1.8.0_462-b08) OpenJDK 64-Bit Server VM (build 25.462-b08, mixed mode */
public class collatz_iter {
  
  public static void collatz_iter(int x) {
    while (x != 1) {
      System.out.println(x);
      if (x % 2 == 0) x = x / 2;
      else x = 3 * x + 1;
    }
    System.out.println(1);
  }
  
  public static void main(String[] args) {
    collatz_iter.collatz_iter(Integer.parseInt(args[0]));
  }
}
