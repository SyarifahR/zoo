import 'package:flutter/material.dart';

class Quote {
  String number;
  String animal;

  Quote({required this.number, required this.animal});
}

class Card_Template extends StatelessWidget {

  final Quote animal;
  Card_Template({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text(
                //  animal.number,
                //  style: TextStyle(
                //      color: Color(0xff7b2cbf),
                //      fontSize: 16),
                //),
                SizedBox(height: 16.0),
                Text(
                  animal.animal,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child:
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.green,),
                iconSize: 30,
                onPressed: (){
                  Navigator.pushNamed(context, animal.number);
                },
              ),
              //Icon(
              //  Icons.arrow_forward_ios_outlined,
              //    color: Colors.green,
              //  size: 20,
              //),
            ),
          ],
        ),
      ),
    );
  }
}

