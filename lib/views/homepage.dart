import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/model/wheather_model.dart';
import 'package:weather_app/views/StartAppPage.dart';
import 'package:weather_app/views/infobody.dart';

import 'package:weather_app/views/searchview.dart';

import '../cuibt/cubit/weather_cubit.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whtear App"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SearchView();
                  }));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitial) {
              return StartAppPage();
            } else if (state is WeatherLoadedState) {
              return infobody(
                wheatheModel: state.wheatheModel,
              );
            } else {
              return Text('data');
            }
          },
        ));
  }
}
