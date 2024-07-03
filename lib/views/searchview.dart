import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cuibt/cubit/weather_cubit.dart';
import 'package:weather_app/model/wheather_model.dart';
import 'package:weather_app/service/wheatheservice.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
            child: TextField(
          onSubmitted: (value) async {
            var weathercubt = BlocProvider.of<WeatherCubit>(context);
            weathercubt.getWeather(cityname: value);
            Navigator.pop(context);
          },
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 31, horizontal: 10),
              labelText: 'Search',
              suffixIcon:
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              hintText: 'Enter City Name'),
        )),
      ),
    );
  }
}
