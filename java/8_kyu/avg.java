//https://www.codewars.com/kata/57a2013acf1fa5bfc4000921/train/java
public class avg {
    public static double findAverage(int[] array) {
        if (array.length == 0) {
            return 0.0;
        }

        int sum = 0;
        for (int n : array) {
            sum += n;
        }

        return (double) sum / array.length;
    }
}