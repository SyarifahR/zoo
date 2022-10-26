import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

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
        title: Text('DOLPHIN',style: TextStyle(color: Colors.black,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 40.0),),
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
        backgroundColor: Colors.blue[200],
        elevation: 30.0,
      ),
      body:
      LazyLoadScrollView(
        isLoading: isLoadingVertical,
        onEndOfPage: () => _loadMoreVertical(),
        child: Scrollbar(
          child: ListView(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(8.0)),
              SizedBox(height: 30.0),
              Center(
                child:
                Container(
                  child: Image.asset(
                    'assets/images/dolphin.jpg',
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
                      text: 'Dolphins are warm-blooded marine mammals that breathe air. They are highly intelligent, sociable and playful animals found throughout the world’s oceans.\n\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Ocean dolphins range in size from the smallest, Māui dolphin, to the largest known dolphin, the Orca or killer whale.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Dolphins are extremely powerful animals. Some species can swim up to speeds of 50kph and regularly dive to depths of up to 55 metres to forage for their favourite foods of fish and squid.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Travelling and hunting in pods, dolphins have big territories, on average around 100km².\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Dolphins help keep our environment in balance by eating other animals. Scientists also see dolphins as indicators of the health of our oceans.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Dolphins communicate in many different ways – including squeaking, clicking and whistling. Each dolphin has a unique whistle – it helps them recognise each other – meaning whistles work very much like human names. They also use high-pitched clicking sounds for echolocation – to help them navigate and find food. The clicks hit objects in the water and then bounce back as echoes. This helps dolphins work out what and where objects are.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Despite what some people think, dolphins don’t communicate by smiling when they are happy. The ‘smile’ on their face is simply their jaw shape.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Throughout the world, more than 3,000 dolphins have been bred in captivity or taken from the wild to be used for entertainment in tourism venues. From their traumatic capture from the wild to being bred in confinement in grossly inadequate conditions, dolphins suffer immensely in captivity.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Captive dolphins can live up to 50 years in small, barren and sometimes chlorinated tanks, pools and lagoons. Did you know dolphins can swim 100 km in a day? Even in the largest captive facilities, dolphins have access to far less space than that. So, they swim in circles or float without moving on the surface of the water – because they’re bored and/or stressed.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Keeping dolphins in captivity for entertainment offers no genuine benefit to conservation and scant educational benefits, despite claims to the contrary from marine entertainment venues. It is inhumane and unethical to use captive dolphins for shows, petting, kissing and swimming attractions.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Instead, the tricks performed during shows include dolphins pulling their trainers through the water by their fins, and trainers ‘surfing’ on the dolphin’s back or being propelled out of the water by the dolphin’s snout. Often, dolphins are made to leave the water to spin in circles, or wear hats or oversized glasses and all to music as loud as 110 dB – similar to the volume of a rock concert. \n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Sea World on the Gold Coast is the last venue in Australia to continue breeding dolphins in captivity. Dolphins like Squeak were born at Sea World and have so far spent over three decades in the same pools, performing the same tricks, year after year.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
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
