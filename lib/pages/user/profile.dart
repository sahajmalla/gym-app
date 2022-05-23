import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Text(
            'User ID: 123',
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              Text(
                'Email: sahaj@email.com',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Text(
            'Created: 23/05/2022',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
