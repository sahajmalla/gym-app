import 'package:flutter/material.dart';
import 'package:gym_app/pages/user/user_routine_workout.dart';

class Routine extends StatefulWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  var days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (final day in days)
            ListTile(
              title: Text(day),
              leading: Icon(Icons.label),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserRoutineWorkout(data: day)));
              },
            ),
        ],
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView.builder(itemCount: days.length  ,itemBuilder: (context,days){
  //       return Card(
  //         child: ListTile(title: Text(days)),
  //       )
  //     }),
  //   )
  // }
}
