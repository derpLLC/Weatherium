import 'package:weatherium/constants/constant.dart';

String getTip(String description) {
  for (String key in tipForWeather.keys) {
    if (key == description) {
      return tipForWeather[key].toString();
    }
  }
  return 'Could not get any tip this time :(';
}
