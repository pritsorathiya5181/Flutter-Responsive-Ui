import 'package:Ticket_Animation/theme.dart';
import 'package:flutter/material.dart';

class ToggleWidget extends StatelessWidget {
  final String first, second;

  const ToggleWidget({Key key, @required this.first, this.second})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: first,
      builder: (context, snapshot) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomRadioButton(
              text: first,
              isCuurentSelected: isEqual(snapshot.data, first),
            ),
            CustomRadioButton(
              text: second,
              isCuurentSelected: isEqual(snapshot.data, second),
            ),
          ],
        );
      },
    );
  }

  bool isEqual(String snapshotData, String selectedText) {
    return snapshotData == selectedText;
  }
}

class CustomRadioButton extends StatelessWidget {
  final String text;
  final bool isCuurentSelected;

  const CustomRadioButton({Key key, this.text, this.isCuurentSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isCuurentSelected ? 4.0 : 0.0,
      color: isCuurentSelected ? primaryColor : Colors.white,
      borderRadius:
          isCuurentSelected ? BorderRadius.all(Radius.circular(20.0)) : null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Text(
          text.toUpperCase(),
          style: isCuurentSelected
              ? radioSelectedTextStyle
              : radioUnSelectedTextStyle,
        ),
      ),
    );
  }
}
