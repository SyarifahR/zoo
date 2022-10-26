import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {

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
        title: Text('PEACOCK',style: TextStyle(color: Colors.black,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 40.0),),
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
        backgroundColor: Colors.purple[200],
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
                    'assets/images/peacock.jpg',
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
                      text: '1. Only male peafowls have ornamental feathers\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Beautiful and colorful tails are characteristic of male peafowl. On the other hand, the feathers of female peafowl are somewhat brown or grey. The colors on the feather are the remarkable difference among peafowl.\n\n'
                              'The large train is used in mating rituals. Tail feathers have eye-like spots surrounded by green, blue feathers. A peacock can flaunt up to 200 feathers on its tail at a time.\n\n'
                              'Many of us are unaware of these facts about peacocks where males are only capable of beautiful feathers.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '2. The largest flying birds\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Despite their heavyweight and long train, the peacock manages to fly. But they only cover short distances. Generally, peacocks fly to escape from predators or for their night roost.\n\n'
                              'Since peacocks are ground-dwelling birds, they prefer running to flying. Peacocks can also run at a 16 km/hr speed, which is pretty fast than other terrestrial birds. \n\n'
                              'These birds weigh between 8-13 pounds and are almost five feet long from head to tail. Only the tail makes up 60% of the peacock’s total body length.\n\n'
                              'Being one of the largest flying birds their ability to sprint is one of the amazing facts about peacocks.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '3. Peacocks are not born with fancy feathers\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Peacock feathers are called trains, and they are not born with fancy tail feathers. The feather development process starts after the age of three.\n\n'
                              'It is harder to distinguish the sex of the bird because they are nearly identical. Adult peacocks use the bright train to impress female fowls and attract as many females as possible.\n\n'
                              'A peacock shows their beautiful feathers mostly during spring, which is also the breeding season. They shed their train every year after the mating season. \n\n\n',
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
