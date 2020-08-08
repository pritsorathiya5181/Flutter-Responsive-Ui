import 'package:Ticket_Animation/screens/TicketList.dart';
import 'package:flutter/material.dart';
import 'package:Ticket_Animation/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: TicketList(),
    );
  }
}
