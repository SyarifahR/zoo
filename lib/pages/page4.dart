import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {

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
        title: Text('CROCODILE',style: TextStyle(color: Colors.black,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 40.0),),
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
        backgroundColor: Colors.lightGreenAccent[200],
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
                    'assets/images/crocodile.jpg',
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
                      text: '1. Crocodiles are carnivores, which generally means they eat only meat. However, a recent study proved they also enjoy an occasional taste of fruit.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'The 2013 study concluled “there is little doubt that on occasion, fruit is deliberately consumed, often in large quantities“, along with their normal meat-heavy diets of mammals, birds, and fish.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '2. Crocodiles can go through 4,000 teeth over a lifetime.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Crocodiles have between 60-110 teeth. When a crocodile loses a tooth, there is a small replacement already on standby. They are able to replace each of their 80 teeth up to 50 times over their lifespan.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '3. A crocodile’s jaws can apply 5,000 pounds of pressure per square inch – the strongest bite of any animal in the world.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'A human’s jaw only produces 100 pounds of pressure per square inch in comparison. A crocodiles bite is 10 times more powerful than a great white shark.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '4. Crocodiles have relatively weak jaw opening muscles, which can be held shut with just a rubber band, or your bare hands.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Although, that’s not advisable! However, it has enabled scientists to study them closer!\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '5. An easy way to tell the difference between a crocodile and an alligator, is when a crocodile closes it’s mouth, all teeth are visible – as the upper and lower jaw are the same width.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Whereas an alligator possesses small depressions in the upper jaw for the lower teeth, meaning they are not visible when their mouth is shut.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '6. Another key difference to an alligator is snout shape. Alligators have wider, U-shaped snouts, while crocodiles are more pointed and V-shaped.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Crocodiles are generally a little more aggressive, and often larger and stronger, too.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '7. The longest crocodile captured alive measured 6.17 m (20.2 ft) and weighed at 1,075 kg (2,370 lb) by a National Geographic team in Agusan del Sur Province, Philippines.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '‘Lolong’ was a saltwater crocodile and the largest ever in captivity.\n\n\n',
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
