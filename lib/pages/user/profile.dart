import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final userId = FirebaseAuth.instance.currentUser!.uid;
  final userEmail = FirebaseAuth.instance.currentUser!.email;
  final userCreationTime =
      FirebaseAuth.instance.currentUser!.metadata.creationTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Text(
            'User ID: $userId',
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              Text(
                'Email: $userEmail',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Text(
            'Created:$userCreationTime',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
