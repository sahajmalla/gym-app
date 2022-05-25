import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRoutineWorkout extends StatefulWidget {
  const UserRoutineWorkout({Key? key, required this.data}) : super(key: key);
  final String data;
  @override
  State<UserRoutineWorkout> createState() => _UserRoutineWorkoutState();
}

class _UserRoutineWorkoutState extends State<UserRoutineWorkout> {
  final Stream<QuerySnapshot> workoutStream =
      FirebaseFirestore.instance.collection('workouts').snapshots();
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Welcome User"),
          ],
        ),
      ),
      // body: Text('${widget.data}'),
      // body: Container(
      //   child: CheckboxListTile(
      //     title: Text('Hello'),
      //     value: _isSelected,
      //     onChanged: (bool? value) {
      //       setState(() {
      //         _isSelected = value!;
      //       });
      //     },
      //   ),
      // ),
      body: StreamBuilder<QuerySnapshot>(
        stream: workoutStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List data = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            data.add(a);
          }).toList();
          for (var i = 0; i < data.length; i++)
            return CheckboxListTile(
              title: Text('hello'),
              value: _isSelected,
              onChanged: (bool? value) {
                setState(() {
                  _isSelected = value!;
                  print(data);
                });
              },
            );

          ;
          return Center(
            child: Text("No workout found"),
          );
        },
      ),
    );
  }
}
