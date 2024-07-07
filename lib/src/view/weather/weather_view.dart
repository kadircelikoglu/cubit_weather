import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/base/cubit/weather_cubit.dart';
import '../../core/components/widgets/widgets.dart';
import '../search/city_search_view.dart';

final class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Weather'),
      ),
      body: const Center(child: _WeatherView()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () async {
          final String? city = await Navigator.of(context).push(CitySearch.route());
          await context.read<WeatherCubit>().getWeather(city: city.toString());
        },
      ),
    );
  }
}

final class _WeatherView extends StatelessWidget {
  const _WeatherView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherInitial) {
          return const WeatherEmpty();
        } else if (state is WeatherLoadInProgress) {
          return const WeatherLoading();
        } else if (state is WeatherLoadSuccess) {
          return WeatherPopulated(weather: state.weather);
        } else {
          return const WeatherError();
        }
      },
    );
  }
}
