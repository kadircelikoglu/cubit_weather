import 'package:cubit_weather/src/view/weather/weather_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cubit/weather_cubit.dart';
import '../services/service.dart';

final class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key, required this.weatherService});

  final WeatherService weatherService;

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  late Color _primaryColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: _primaryColor,
        textTheme: GoogleFonts.rajdhaniTextTheme(textTheme),
      ),
      home: BlocProvider(
        create: (_) => WeatherCubit(widget.weatherService),
        child: const WeatherView(),
      ),
    );
  }
}
