//https://www.codewars.com/kata/5467e4d82edf8bbf40000155/solutions/java
import java.util.*;

public class DescendingOrder {
  public static int sortDesc(final int num) {
    char[] digits = String.valueOf(num).toCharArray();
    Arrays.sort(digits);
    StringBuilder sb = new StringBuilder(new String(digits)).reverse();
    return Integer.parseInt(sb.toString());
  }
}