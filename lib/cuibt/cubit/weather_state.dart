part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WheatheModel wheatheModel;

  WeatherLoadedState(this.wheatheModel);
}

class WeatherFailureState extends WeatherState {}
