class DateTimeHelper {
  static const Map<int, String> nameMap = {
    1: "jan",
    2: "feb",
    3: "mars",
    4: "apr",
    5: "maj",
    6: "juni",
    7: "juli",
    8: "aug",
    9: "sept",
    10: "okt",
    11: "nov",
    12: "dec",
  };

  static String getNameOfMonth(int month) => nameMap[month];
}
