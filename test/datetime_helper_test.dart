import 'package:flutter_test/flutter_test.dart';
import 'package:sdur_app/util/datetime_helper.dart';

void main() {
  test('Returning month names', () {
    final jan = DateTimeHelper.getNameOfMonth(1);
    final feb = DateTimeHelper.getNameOfMonth(2);
    final mar = DateTimeHelper.getNameOfMonth(3);
    final apr = DateTimeHelper.getNameOfMonth(4);
    final may = DateTimeHelper.getNameOfMonth(5);
    final jun = DateTimeHelper.getNameOfMonth(6);
    final jul = DateTimeHelper.getNameOfMonth(7);
    final aug = DateTimeHelper.getNameOfMonth(8);
    final sep = DateTimeHelper.getNameOfMonth(9);
    final oct = DateTimeHelper.getNameOfMonth(10);
    final nov = DateTimeHelper.getNameOfMonth(11);
    final dec = DateTimeHelper.getNameOfMonth(12);

    expect(jan, 'jan');
    expect(feb, 'feb');
    expect(mar, 'mars');
    expect(apr, 'apr');
    expect(may, 'maj');
    expect(jun, 'juni');
    expect(jul, 'juli');
    expect(aug, 'aug');
    expect(sep, 'sept');
    expect(oct, 'okt');
    expect(nov, 'nov');
    expect(dec, 'dec');
  });
}
