import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:weatherium/screens/homescreen.dart';
import 'package:weatherium/services/openweather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    setWeatherData();
  }

  void setWeatherData() async {
    Map<String, dynamic>? weatherData = await getWeatherData();

    Get.off(() => HomeScreen(weatherData: weatherData));
  }

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset('assets/icons/weather.svg',
        height: MediaQuery.of(context).size.height * 0.25);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            SizedBox(height: 40),
            CircularProgressIndicator(color: Colors.white)
          ],
        ),
      ),
    );
  }
}
