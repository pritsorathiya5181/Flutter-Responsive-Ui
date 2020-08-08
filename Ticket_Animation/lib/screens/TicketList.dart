import 'package:Ticket_Animation/common/myapp_bar.dart';
import 'package:flutter/material.dart';

class TicketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Plane Ticket'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ToggleWidget(first: 'Not Used', second: 'Already Used'),
          ],
        ),
      ),
    );
  }
}
