import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(children: [
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("Create Workout")),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(10.0),
            height: 771,
            alignment: Alignment.topCenter,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [WorkoutCard()],
                    ),
                    Row(
                      children: [WorkoutCard()],
                    ),
                  ],
                )
              ],
            ),
          ),
        ])),
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.blue,
      child: SizedBox(
          width: 350,
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Workout_Name'),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero),
                              child: const Text("Edit"))
                        ],
                      ),
                    ),
                  ],
                ),
                // ROW 2
                const Row(
                  children: [Text("Exercise 1, Exercise 2, ...")],
                ),
                // ROW 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("Start"))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
