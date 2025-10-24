//https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a/solutions/java
public class Clock
{
  public static int Past(int h, int m, int s) 
  {
   return (h * 3600000) + (m * 60000) + (s * 1000);
  }
}