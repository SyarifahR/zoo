import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 160.0),
              //Center(
               // child: CircleAvatar(
                  //backgroundImage: AssetImage('assets/barbie.jpg'),
                  //radius: 80.0,
                //),
              //),
              Divider(
                height: 120.0,
                color: Colors.grey[800],
              ),
              Center(
                child: Icon(
                  Icons.hourglass_bottom_rounded,
                  size: 50,
                  color: Colors.blueAccent[400],
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Text(
                  'Loading ...',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
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
