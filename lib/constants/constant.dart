import 'package:flutter/painting.dart';

final Map<String, String> iconsForConditions = {
  'clear sky': 'assets/icons/sunny.svg',
  'few clouds': 'assets/icons/sunny_intervals.svg',
  'scattered clouds': 'assets/icons/white_cloud.svg',
  'mist': 'assets/icons/mist.svg',
  'haze': 'assets/icons/mist.svg',
  'Smoke': 'assets/icons/mist.svg',
  'sand/ dust whirls': 'assets/icons/mist.svg',
  'sand': 'assets/icons/mist.svg',
  'dust': 'assets/icons/mist.svg',
  'volcanic ash': 'assets/icons/mist.svg',
  'squalls': 'assets/icons/mist.svg',
  'tornado': 'assets/icons/mist.svg',
  'fog': 'assets/icons/fog.svg',
  'light rain': 'assets/icons/light_rain_showers.svg',
  'shower rain': 'assets/icons/light_rain_showers.svg',
  'ragged shower rain': 'assets/icons/light_rain_showers.svg',
  'moderate rain': 'assets/icons/light_rain_showers.svg',
  'heavy intensity rain': 'assets/icons/heavy_rain_showers.svg',
  'very heavy rain': 'assets/icons/heavy_rain_showers.svg',
  'extreme rain': 'assets/icons/heavy_rain_showers.svg',
  'light intensity shower rain': 'assets/icons/cloudy_with_light_rain.svg',
  'high intensity shower rain': 'assets/icons/cloudy_with_heavy_rain.svg',
  'freezing rain': 'assets/icons/sleet_showers.svg',
  'broken clouds': 'assets/icons/cloudy_with_sleet.svg',
  'overcast clouds': 'assets/icons/cloudy_with_sleet.svg',
  'light intensity drizzle': 'assets/icons/cloudy_with_light_rain.svg',
  'shower drizzle': 'assets/icons/cloudy_with_light_rain.svg',
  'shower rain and drizzle': 'assets/icons/cloudy_with_light_rain.svg',
  'drizzle': 'assets/icons/cloudy_with_light_rain.svg',
  'heavy intensity drizzle': 'assets/icons/cloudy_with_heavy_rain.svg',
  'light intensity drizzle rain': 'assets/icons/cloudy_with_light_rain.svg',
  'high intensity drizzle rain': 'assets/icons/cloudy_with_heavy_rain.svg',
  'drizzle rain': 'assets/icons/cloudy_with_light_rain.svg',
  'heavy shower rain and drizzle': 'assets/icons/cloudy_with_heavy_rain.svg',
  'thunderstorm with light rain': 'assets/icons/thundery_showers.svg',
  'thunderstorm rain': 'assets/icons/thundery_showers.svg',
  'thunderstorm with heavy rain': 'assets/icons/thunderstorms.svg',
  'light thunderstorm': 'assets/icons/thundery_showers.svg',
  'thunderstorm': 'assets/icons/thunderstorms.svg',
  'heavy thunderstorm': 'assets/icons/thunderstorms.svg',
  'ragged thunderstorm': 'assets/icons/thundery_showers.svg',
  'thunderstorm with light drizzle': 'assets/icons/thundery_showers.svg',
  'thunderstorm with drizzle': 'assets/icons/thundery_showers.svg',
  'thunderstorm with heavy drizzle': 'assets/icons/thunderstorms.svg',
};

final Map<String, String> tipForWeather = {
  'clear sky':
      'The sky is clear and remember to use Sun Screen if you are going out in the Sun.',
  'few clouds': 'The Sun and Clouds are playing Hide and Seek today.',
  'scattered clouds': 'The Clouds are scattered here and there.',
  'mist': 'It\'s misty today. Stephen King is this your doing?',
  'haze': 'The atmosphere is hazy, just like my mind.',
  'Smoke':
      'Uh oh! smoke is out in the air, remember to wear mask and take appropriate precautions.',
  'sand/ dust whirls': 'It\'s sandy out there be careful.',
  'sand': 'It\'s sandy out there be careful.',
  'dust': 'It\'s dusty out there be careful.',
  'volcanic ash':
      'It\'s raining volcanic ash, dont\'t breathe it in and take care of yourself.',
  'squalls': 'Squalls are out guys.',
  'tornado': 'Roundy Roundy fast wind is approaching! be careful.',
  'fog':
      'Seems like John Cena is everywhere today because i can\'t see anything. It\'s Foggy out there guys!',
  'light rain': 'Little bit of rain, nothing to worry about.',
  'shower rain': 'Shower rain? What?',
  'ragged shower rain': 'Ragged Shower Rain? Even weirder.',
  'moderate rain':
      'Moderate rain, seems like a nice weather to take a bath out on the street.',
  'heavy intensity rain':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'very heavy rain':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'extreme rain': 'Fierce rain, do not go outside.',
  'light intensity shower rain': 'Little bit of rain, nothing to worry about.',
  'high intensity shower rain':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'freezing rain': 'Freezing rain, stay warm!',
  'broken clouds': 'Clouds got brokey-wokey.',
  'overcast clouds': 'Incoming and Outgoing of Clouds',
  'light intensity drizzle': 'Little bit of rain, nothing to worry about.',
  'shower drizzle': 'Little bit of rain, nothing to worry about.',
  'shower rain and drizzle': 'Little bit of rain, nothing to worry about.',
  'drizzle': 'Rain is drizzling just like Saltbae drizzles the salt.',
  'heavy intensity drizzle':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'light intensity drizzle rain': 'Little bit of rain, nothing to worry about.',
  'high intensity drizzle rain':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'drizzle rain': 'Rain is drizzling like Saltbae drizzles the salt.',
  'heavy shower rain and drizzle':
      'It\'s raining heavily, enjoy the weather with your loved one.',
  'thunderstorm with light rain': 'Thunderstorm with light rain.',
  'thunderstorm rain': 'Thunderstorm with rain.',
  'thunderstorm with heavy rain': 'It\'s gonna rain heavily.',
  'light thunderstorm': 'Light thunderstorm.',
  'thunderstorm': 'Thunderstorm',
  'heavy thunderstorm': 'Heavy Thunderstorm',
  'ragged thunderstorm': 'Burntout thunderstorm.',
  'thunderstorm with light drizzle': 'Thunderstorm with light drizzle',
  'thunderstorm with drizzle': 'Thunderstorm with drizzle',
  'thunderstorm with heavy drizzle': 'Thunderstorm with heavy drizzle',
};

Map<String, BoxDecoration> backgroundColor = {
  'clear sky': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 254, 204, 81),
      Color.fromARGB(255, 250, 134, 7)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'few clouds': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 108, 250, 228),
      Color.fromARGB(255, 114, 238, 236)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'scattered clouds': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 108, 250, 228),
      Color.fromARGB(255, 114, 238, 236)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'mist': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'haze': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'Smoke': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'sand/ dust whirls': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 249, 204, 96),
      Color.fromARGB(255, 231, 168, 18)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'sand': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 249, 204, 96),
      Color.fromARGB(255, 231, 168, 18)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'dust': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 249, 204, 96),
      Color.fromARGB(255, 231, 168, 18)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'volcanic ash': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'squalls': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'tornado': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'fog': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 184, 194, 193),
      Color.fromARGB(255, 184, 194, 193)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'light rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'shower rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'ragged shower rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'moderate rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 80, 200, 251),
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'heavy intensity rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'very heavy rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'extreme rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'light intensity shower rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'high intensity shower rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'freezing rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'broken clouds': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 108, 250, 228),
      Color.fromARGB(255, 114, 238, 236)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'overcast clouds': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 108, 250, 228),
      Color.fromARGB(255, 114, 238, 236)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'light intensity drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'shower drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'shower rain and drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'heavy intensity drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'light intensity drizzle rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'high intensity drizzle rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'drizzle rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'heavy shower rain and drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm with light rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm with heavy rain': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'light thunderstorm': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'heavy thunderstorm': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'ragged thunderstorm': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm with light drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm with drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
  'thunderstorm with heavy drizzle': BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 89, 229, 254),
      Color.fromARGB(255, 91, 203, 251)
    ],
    stops: [0.6, 0.9],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  )),
};
