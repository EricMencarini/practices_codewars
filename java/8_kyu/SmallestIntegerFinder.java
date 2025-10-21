//https://www.codewars.com/kata/55a2d7ebe362935a210000b2/train/java
public class SmallestIntegerFinder {
    public static int findSmallestInt(int[] args) {
        int smallest = args[0];
        for (int n : args) {
          if(n < smallest) {
            smallest = n;
          }
        }
        return smallest;
    }
}