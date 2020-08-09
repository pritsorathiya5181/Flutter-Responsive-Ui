import 'dart:async';

import 'package:Ticket_Animation/common/ticket_card.dart';
import 'package:Ticket_Animation/model/myticket.dart';
import 'package:Ticket_Animation/theme.dart';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

class TicketDetail extends StatefulWidget {
  final Ticket ticket;

  const TicketDetail({Key key, this.ticket}) : super(key: key);

  @override
  _TicketDetailState createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail>
    with AfterLayoutMixin<TicketDetail> {
  bool showCorner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Hero(
            tag: widget.ticket.id,
            child: TicketCardWidget(ticket: widget.ticket, showQR: false),
          ),
          Spacer(),
          Hero(
            tag: 'qrcode',
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/qrcode.png",
                  width: 140.0,
                  color: Colors.white,
                ),
                createCorners(),
              ],
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }

  Widget createCorners() {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      width: showCorner ? 140 : 80,
      height: showCorner ? 140 : 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: showCorner ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RotatedBox(
                  quarterTurns: 0,
                  child: Image.asset(
                    "assets/corners.png",
                    width: 25.0,
                  )),
              RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    "assets/corners.png",
                    width: 25.0,
                  )),
            ],
          ),
          Spacer(),
          Row(
            mainAxisSize: showCorner ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RotatedBox(
                  quarterTurns: 3,
                  child: Image.asset(
                    "assets/corners.png",
                    width: 25.0,
                  )),
              RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    "assets/corners.png",
                    width: 25.0,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    startTimer();
  }

  startTimer() {
    var duration = Duration(milliseconds: 300);
    Timer(duration, showCorners);
  }

  showCorners() {
    setState(() {
      showCorner = true;
    });
  }
}
