/* Tested with OpenJDK Runtime Environment Temurin-11.0.12+7 (build 11.0.12+7) */
public class collatz {
  public static int collatz(int x) {
    System.out.println(x);
    if (x == 1) return 1;
    else if (x % 2 == 0) return collatz(x / 2);
    else return collatz(3 * x + 1);
  }
  
  public static void main(String[] args) {
    if (args.length > 0) {
      collatz(Integer.parseInt(args[0]));
    }
  }
}
