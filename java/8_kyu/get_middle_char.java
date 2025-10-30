class get_middle_char {
  public static String getMiddle(String word) {
    int len = word.length();
    int mid = len / 2;

    if (len % 2 == 0) {
      return word.substring(mid - 1, mid + 1);
    } else {
      return word.substring(mid, mid + 1);
    }
  }
}
