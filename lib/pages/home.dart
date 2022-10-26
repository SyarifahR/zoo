import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
int ninjaLevel = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 180.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Welcome to',
                  style: TextStyle(color: Colors.black,
                      fontSize: 28.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Virtual Zoo ',
                  style: TextStyle(color: Colors.black,
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 80.0),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/zoo.jfif'),
                  radius: 80.0,
                ),
              ),
              SizedBox(height: 80.0),
              TextButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/gallery');},
                  icon: Icon(Icons.nordic_walking_rounded, size: 40.0),
                  label: Container(
                    width: 100,
                    height: 70,
                    child: Align(
                      //alignment: Alignment.centerLeft,
                      child: Text(
                        'Lets Go',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize:24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
