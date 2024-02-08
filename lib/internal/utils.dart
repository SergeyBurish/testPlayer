class Utils {
  static String timeFormat (int seconds) {
    Duration duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, "0");

    String time = '';
    if (duration.inHours > 0) {
      time += '${twoDigits(duration.inHours.remainder(60).abs())}:';
    }
    time += '${twoDigits(duration.inMinutes.remainder(60).abs())}:';
    time += twoDigits(duration.inSeconds.remainder(60).abs());
    return time;
  }
}