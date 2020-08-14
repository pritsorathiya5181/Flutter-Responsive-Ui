import 'package:HiddenDrawer/configuration.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pet_Ui Flutter',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((e) => Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Icon(
                            e['icon'],
                            color: Colors.grey[200],
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(e['title'],
                              style: TextStyle(
                                  color: Colors.grey[200], fontSize: 20))
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Settings',
                  style: TextStyle(color: Colors.grey[200], fontSize: 17)),
              SizedBox(
                width: 10,
              ),
              Container(width: 2, height: 20, color: Colors.grey[200]),
              SizedBox(
                width: 10,
              ),
              Text('Logout',
                  style: TextStyle(color: Colors.grey[200], fontSize: 17)),
            ],
          )
        ],
      ),
    );
  }
}
