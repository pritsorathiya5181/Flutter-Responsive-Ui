import 'package:Ticket_Animation/common/FadePageRoute.dart';
import 'package:Ticket_Animation/common/airport_detail_widget.dart';
import 'package:Ticket_Animation/common/location_widget.dart';
import 'package:Ticket_Animation/model/myticket.dart';
import 'package:Ticket_Animation/screens/ticket_details.dart';
import 'package:Ticket_Animation/theme.dart';
import 'package:flutter/material.dart';

class TicketCardWidget extends StatelessWidget {
  final Ticket ticket;
  final bool showQR;

  const TicketCardWidget({Key key, this.ticket, this.showQR = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: showQR
          ? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)
          : null,
      child: Material(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        elevation: showQR ? 8.0 : 0.0,
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(FadePageRoute(widget: TicketDetail(ticket: ticket)));
          },
          child: Container(
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          LocationWidget(
                            stationName: ticket.sourceStation,
                            cityName: ticket.sourceCity,
                            time: ticket.departureTime,
                          ),
                          Spacer(),
                          Icon(
                            Icons.flight_takeoff,
                            color: Colors.white,
                            size: 40.0,
                          ),
                          Spacer(),
                          LocationWidget(
                            stationName: ticket.destinationStation,
                            cityName: ticket.destinationCity,
                            time: ticket.arrivalTime,
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        height: 0.5,
                        color: Colors.white,
                      ),
                      SizedBox(height: 16.0),
                      AirportDetail(
                        terminal: ticket.terminal,
                        game: ticket.game,
                        boarding: ticket.boardingTime,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                showQR
                    ? Image.asset(
                        "assets/qrcode.png",
                        width: 80.0,
                        color: Colors.white,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
