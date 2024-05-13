import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int score = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 160, 32, 240),
      ),
      home: class1(),
    );
  }
}

class class1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'asset/download.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                "Learn Flutter the fun way!",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                child: const Text('Start quiz'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => class2()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class class2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "What are the main building blocks of Flutter UIs?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Functions"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class3()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Components"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class3()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Blocks"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class3()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Widgets"),
                onPressed: () {
                  score++;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class3()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "How are Flutter UIs built?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text("By combining widgets in a visual editor"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class4()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                    "By using Xcode for IOS and Android Studio for Android"),
                onPressed: () {
                  score++;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class4()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("By combining widgets in code"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class4()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("By defining widgets in config files"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class4()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class class4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "You have scored ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                score.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const Text(
                "out of 2 ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Restart Quiz"),
                onPressed: () {
                  score = 0;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => class1()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
