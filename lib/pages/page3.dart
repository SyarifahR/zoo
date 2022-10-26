import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  bool isLoadingVertical = false;

  @override
  void initState(){
    _loadMoreVertical();
    super.initState();
  }

  Future _loadMoreVertical() async {
    setState(() {
      isLoadingVertical = true;
    });
    await new Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoadingVertical = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        toolbarHeight: 80,
        title: Text('LION',style: TextStyle(color: Colors.black,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 40.0),),
        centerTitle: true,
        leading: Transform.scale(
          scale: 2,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: (){
              Navigator.pushNamed(context, '/gallery');
            },
          ),
        ),
        //leading: BackButton(color: Colors.black),
        leadingWidth: 80,
        backgroundColor: Colors.orangeAccent[200],
        elevation: 30.0,
      ),
      body:
      LazyLoadScrollView(
        isLoading: isLoadingVertical,
        onEndOfPage: () => _loadMoreVertical(),
        child: Scrollbar(
          child: ListView(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(8.0),
              ),
              SizedBox(height: 30.0),
              Center(
                child:
                Container(
                  child: Image.asset(
                    'assets/images/lion.jpg',
                    height: 200,
                    width: 400,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'QUICK ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'FACTS ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  width: 350,
                  child:
                  Text.rich(
                    TextSpan(
                      text: '1. African lions live in groups called ‘prides’.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'The African lion is actually the most social of all big cats on the planet. A pride can include up to 30 animals, but typically are made up of 10-15, with five or six females, their cubs (both male and female) and two males who breed with the females in the group.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '2. Young male lions get kicked out of the pride by older males when they reach sexual maturity, at about 2 years old.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'These young males then live and roam in small groups (often with brothers and cousins), until they find another pride that they could take over and breed with females. This will often lead to fights with existing males in the pride.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '3. When a male lion takes over a pride, it can kill all the lion cubs to bring the pride’s females into heat again.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'This allows the new males to breed and raise their own offspring.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '4. A male lions mane is a symbol of their fighting ability and health to both potential mates, and rivals.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Experiments showed that darker and longer manes are attracted more females, and male lions were more likely to attack blonder, and shorter manes.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '5. Lionesses can turn on and kill older previously dominant males in a pride.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Male lions become a member of the pride because the females accept them as the pride male. Therefore, their social status can can be precarious. The lion has to win the grace of the females and usually will only be able to remain the pride male 3 to 5 years in the wild.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '6. Lions have a roar that can carry up to 8km (5 miles).\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'The roar of a lion can be heard as far away as 5 miles from the source.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '7. Lions run up to speeds of 80 Kph (50 Mph).\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'While not quite as rapid as the Cheetah which can reach speeds of 70mph, a lion can achieve a land speed of 50 Mph for short distances.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '8. They have an amazing jump, and have been recorded springing as far as 36 feet.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'They can also climb extemely well, capable of climbing vertical trunks of trees with ease.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
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
