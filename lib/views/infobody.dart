import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/model/wheather_model.dart';

import '../cuibt/cubit/weather_cubit.dart';

class infobody extends StatelessWidget {
  const infobody({super.key, required this.wheatheModel});
  final WheatheModel wheatheModel;
  @override
  Widget build(BuildContext context) {


    String s = "https:";
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient
      (begin: Alignment.topCenter,end: Alignment.bottomCenter,colors:[ Colors.orange,Colors.white])),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            wheatheModel.cityname,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "update at :  ${wheatheModel.date.hour}:${wheatheModel.date.minute}",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("${s + wheatheModel.image!}"),
              Text(
                wheatheModel.temp.toString(),
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    " Max Temp : ${wheatheModel.maxtemp.round()}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    " Min Temp : ${wheatheModel.mintemp.round()}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Text(
            wheatheModel.condition,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    )
        // nowth()
        ;
  }
}

DateTime ss(String value) {
  return DateTime.parse(value);
}
