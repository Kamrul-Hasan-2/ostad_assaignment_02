import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackBar(context, msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Hello, World!',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Welcome to flutter',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/hello.png'),
                  fit: BoxFit.cover, // Adjust the image to cover the container
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                onPressed: () {
                  mySnackBar(context, 'Press me');
                },
                child: Text('Press me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
