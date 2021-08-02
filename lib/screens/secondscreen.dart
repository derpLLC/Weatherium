import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weatherium/screens/homescreen.dart';
import 'package:weatherium/services/openweather.dart';
import 'package:weatherium/utilites/getIcon.dart';
import 'package:weatherium/utilites/getTip.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.weatherData}) : super(key: key);

  final weatherData;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _searchController = TextEditingController();
  final _rnd = Random().nextInt(30);
  var weatherData;

  void getCityWeatherData(String cityName) async {
    weatherData = await getWeatherDataFromCityName(cityName);
    Get.offAll(() => HomeScreen(weatherData: weatherData));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252736),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('${widget.weatherData['city']}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              left: 20.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CupertinoSearchTextField(
                  controller: _searchController,
                  onSubmitted: (name) {
                    getCityWeatherData(name);
                    _searchController.clear();
                  },
                  itemColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  prefixInsets: EdgeInsets.all(8.0),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 45.0, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white.withOpacity(0.4)),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$_rnd minutes ago',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 15),
                          Text(
                              '${getTip(widget.weatherData['current']['weather'][0]['description'])}',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Next Week',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        Divider(color: Colors.transparent),
                    itemCount: 7,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${DateFormat('EEEEE').format(DateTime.fromMillisecondsSinceEpoch(widget.weatherData['daily'][index]['dt'] * 1000))}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              getIcon(
                                  '${widget.weatherData['daily'][index]['weather'][0]['description']}',
                                  height: 30)
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${widget.weatherData['daily'][index]['temp']['max'].toInt()}°    ${widget.weatherData['daily'][index]['temp']['min'].toInt()}°',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: getIcon(
                      '${widget.weatherData['current']['weather'][0]['description']}',
                      height: 125)),
            ),
          ],
        ),
      ),
    );
  }
}
