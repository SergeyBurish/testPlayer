import 'package:intl/intl.dart';
import 'package:test_player/l10n/l10n.dart';

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

  static String timeAgoFormat (String date, context) {
    DateFormat format = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    DateTime dateTime = format.parse(date);

    Duration duration = DateTime.now().difference(dateTime);
    int days = duration.inDays;

    // simplified
    String res = switch (days) {
      > 365 => '${days ~/ 365} ${L10n.of(context).years}',
      > 30 => '${days ~/ 30} ${L10n.of(context).monthes}',
      > 7 => '${days ~/ 7} ${L10n.of(context).weeks}',
      _ => '$days ${L10n.of(context).days}'
    };
    return res;
  }
    

  static String viewsFormat (int viewsNumber) {
    String views = switch (viewsNumber) {
      > 1e6 => '${viewsNumber ~/ 1e6}M',
      > 1e3 => '${viewsNumber ~/ 1e3}K',
      _ => viewsNumber.toString()
    };
    return views;
  }
}