import 'package:Ticket_Animation/common/myapp_bar.dart';
import 'package:Ticket_Animation/common/ticket_card_widget.dart';
import 'package:Ticket_Animation/common/toggle_widget.dart';
import 'package:Ticket_Animation/model/myticket.dart';
import 'package:flutter/material.dart';

class TicketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ticket ticket = Ticket();
    ticket.id = "1";
    ticket.sourceStation = "LHR";
    ticket.sourceCity = "London";
    ticket.departureTime = "15:00";
    ticket.destinationStation = "SXF";
    ticket.destinationCity = "New York";
    ticket.arrivalTime = "07:00";
    ticket.terminal = "12";
    ticket.game = "F62";
    ticket.boardingTime = "14:30";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Plane Ticket'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ToggleWidget(first: 'Not Used', second: 'Already Used'),
            SizedBox(
              height: 20.0,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[TicketCardWidget(ticket: ticket)],
            )
          ],
        ),
      ),
    );
  }
}
