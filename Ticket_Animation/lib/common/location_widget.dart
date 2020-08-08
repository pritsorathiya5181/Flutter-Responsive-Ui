import 'package:Ticket_Animation/theme.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String stationName, cityName, time;

  const LocationWidget(
      {Key key,
      @required this.stationName,
      @required this.cityName,
      @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(stationName.toUpperCase(), style: bigTextStyle),
        SizedBox(height: 2.0),
        Text(cityName, style: smallTextStyle),
        SizedBox(height: 2.0),
        Text(time, style: mediumTextStyle),
      ],
    );
  }
}
