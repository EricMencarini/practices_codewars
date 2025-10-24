//https://www.codewars.com/kata/57cc975ed542d3148f00015b/solutions/java
import java.util.Arrays;

public class youonlyneedone {
    public static boolean check(Object[] a, Object x) {
        if (Arrays.asList(a).contains(x)) {
            return true;
        } else {
            return false;
        }
    }
}