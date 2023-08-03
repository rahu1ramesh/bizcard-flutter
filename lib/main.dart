import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(), // runApp() is a method that takes the given Widget and makes it the root of the widget tree.
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BizCard', // Title of the app
      debugShowCheckedModeBanner:
          false, // Setting debugShowCheckedModeBanner to false removes the debug banner from the app.
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // super.key is used to call the constructor of the parent class
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // The body of the scaffold is set to a Center widget, which centers its child widgets.
      body: Center(
        // The child of the Center widget is a Column widget, which is used to display its children in a vertical array.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset() is used to add a local image to the app
            Image.asset(
              'images/image.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Rahul Ramesh',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox is used to add space between widgets
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Application Developer',
              // TextStyle is used to style the text
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'rahul.ramesh@abc.com',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
