import 'package:dio/dio.dart';
import 'package:weather_app/model/wheather_model.dart';

class Wheatherservice {
  final Dio dio;
  final String baseurl = 'https://api.weatherapi.com/v1';
  final String apikey = 'fdf61efcef5e4d47aaa193624242706';
  Wheatherservice(this.dio);
//$baseurl/forecast.json?key=$apikey&q=$cityname&days=1
  Future<WheatheModel> getWeather({required String cityname}) async {
   try {  Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=fdf61efcef5e4d47aaa193624242706&q=$cityname&days=1');
      
      WheatheModel wheatheModel = WheatheModel.fomjson(response.data);

      return wheatheModel;
    } on DioException catch (e) {
      final String error =
          e.response?.data['error']['message'] ?? ' opps error';
      throw Exception(error);
    } catch (e) {
      throw Exception('opps error');
    }
  }
}
