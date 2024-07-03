 import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../model/wheather_model.dart';
import '../../service/wheatheservice.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
 WheatheModel? wheatheModel;
  getWeather({required String cityname}) async {
    WheatheModel wheatheModel =
        await Wheatherservice(Dio()).getWeather(cityname: cityname);
    try {
      emit(WeatherLoadedState(wheatheModel!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
