// import 'package:flutter/material.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:weatherapplication/helper/extensions.dart';
// import 'package:weatherapplication/provider/weatherProvider.dart';
//
// import 'customShimmer.dart';
//
// class DetailInfoTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<WeatherProvider>(builder: (context, weatherProv, _) {
//       if (weatherProv.isLoading) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(
//               child: CustomShimmer(
//                 height: 148.0,
//                 width: 148.0,
//               ),
//             ),
//             const SizedBox(width: 16.0),
//             CustomShimmer(
//               height: 148.0,
//               width: 148.0,
//             ),
//           ],
//         );
//       }
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             DetailInfoTile(
//                 icon: PhosphorIcon(
//                   PhosphorIconsRegular.thermometerSimple,
//                   color: Colors.white,
//                 ),
//                 title: 'Feels Like',
//                 data: weatherProv.isCelsius
//                     ? '${weatherProv.weather.feelsLike.toStringAsFixed(1)}°'
//                     : '${weatherProv.weather.feelsLike.toFahrenheit().toStringAsFixed(1)}°'),
//           ],
//         ),
//       );
//     });
//   }
// }
