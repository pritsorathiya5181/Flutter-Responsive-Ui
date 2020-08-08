import 'package:Ticket_Animation/theme.dart';
import 'package:flutter/material.dart';

class AirportDetail extends StatelessWidget {
  final String terminal, game, boarding;

  const AirportDetail({Key key, this.terminal, this.game, this.boarding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        customColumn("terminal", terminal),
        Spacer(),
        customColumn("game", game),
        Spacer(),
        customColumn("boarding", boarding),
      ],
    );
  }

  Widget customColumn(String label, String value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(label.toUpperCase(), style: smallTextStyle),
          Text(value, style: smallBoldTextStyle),
        ],
      );
}
