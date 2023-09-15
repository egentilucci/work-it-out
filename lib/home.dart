import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top Part (10% of the screen height)
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            color: Colors.brown,
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 0.7, // Button width as a fraction of the parent
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    // Button onPressed action
                  },
                  child: const Text(
                    'New Routine',
                    textScaleFactor: 1.25,
                  ),
                ),
              ),
            ),
          ),
          // Bottom Part
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
                child: Column(
                  children: [
                    const Text(
                      "My Routines",
                      textScaleFactor: 2.0,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      color: Colors.white, // You can set the color of the divider
                      thickness: 1, // You can set the thickness of the divider
                    ),
                    Card(
                      color: Colors.brown,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Routine 1',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Edit',
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '[Exercises in Routine]',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.9, // Button width as a fraction of the parent
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                ),
                                onPressed: () {
                                  // Button onPressed action
                                },
                                child: const Text(
                                  'Start',
                                  textScaleFactor: 1.25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
