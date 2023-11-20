import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HW3',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen1');
                print('Received data from Screen 1: $result');
              },
              child: Text('Go to Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildWidget('Widget A'),
            _buildWidget('Widget B'),
            _buildWidget('Widget C'),
            _buildWidget('Widget D'),
            _buildWidget('Widget E'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen2');
                print('Received data from Screen 2: $result');
              },
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidget(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(text),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildWidget('Widget X'),
            _buildWidget('Widget Y'),
            _buildWidget('Widget Z'),
            _buildWidget('Widget W'),
            _buildWidget('Widget Q'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen3');
                print('Received data from Screen 3: $result');
              },
              child: Text('Go to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidget(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(text),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildWidget('Widget P'),
            _buildWidget('Widget Q'),
            _buildWidget('Widget R'),
            _buildWidget('Widget S'),
            _buildWidget('Widget T'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen4');
                print('Received data from Screen 4: $result');
              },
              child: Text('Go to Screen 4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidget(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(text),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildWidget('Widget M'),
            _buildWidget('Widget N'),
            _buildWidget('Widget O'),
            _buildWidget('Widget P'),
            _buildWidget('Widget Q'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen5');
                print('Received data from Screen 5: $result');
              },
              child: Text('Go to Screen 5'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidget(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(text),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildWidget('Widget Z'),
            _buildWidget('Widget W'),
            _buildWidget('Widget X'),
            _buildWidget('Widget Y'),
            _buildWidget('Widget Z'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Result from Screen 5');
              },
              child: Text('Send Data Back'),
            ),
            ElevatedButton(
              onPressed: () {

                Navigator.pop(context);
              },
              child:

              Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidget(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(text),
    );
  }
}
