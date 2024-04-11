import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapplication/helper/extensions.dart';
import 'package:weatherapplication/provider/weatherProvider.dart';

import 'customShimmer.dart';

class MainWeatherInfo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, weatherProv, _) {
      if (weatherProv.isLoading) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: CustomShimmer(
                height: 148.0,
                width: 148.0,
              ),
            ),
            const SizedBox(width: 16.0),
            CustomShimmer(
              height: 148.0,
              width: 148.0,
            ),
          ],
        );
      }
      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightBlue, Colors.lightBlueAccent],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Weather',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          weatherProv.weather.description.toTitleCase(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            Text(
                              'Location: ${weatherProv.weather.city}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.thermostat, color: Colors.white),
                            Text(
                              'Temperature: ${weatherProv.isCelsius ? weatherProv.weather.temp.toStringAsFixed(1) + '°C' : weatherProv.weather.temp.toFahrenheit().toStringAsFixed(1) + '°F'}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.water_drop, color: Colors.white),
                            Text(
                              'Humidity: ${weatherProv.weather.humidity.toString()}%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.white),
                            Text(
                              'Pressure: ${weatherProv.weather.pressure.toString()} hPa',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.wb_sunny, color: Colors.white),
                            Text(
                              'Feels Like: ${weatherProv.weather.feelsLike.toString()}°',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.air, color: Colors.white),
                            Text(
                              'Wind Speed: ${weatherProv.weather.windSpeed.toString()} m/s',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.thermostat, color: Colors.white),
                            Text(
                              'TempMax: ${weatherProv.weather.tempMax.toString()}°',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.thermostat_outlined,
                                color: Colors.white),
                            Text(
                              'TempMin: ${weatherProv.weather.tempMin.toString()}°',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),

                  // Add weather icon here
                  // SizedBox(
                  //   height: 148.0,
                  //   width: 148.0,
                  //   child: Image.asset(
                  //     getWeatherImage(weatherProv.weather.weatherCategory),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
