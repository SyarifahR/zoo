import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {

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
        title: Text('SNAKE',style: TextStyle(color: Colors.black,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 40.0),),
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
        backgroundColor: Colors.blueGrey[200],
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
                    'assets/images/snake.jpg',
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
                      text: '1. Snakes can dig.\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Snakes can climb, swim, slither, and even dig. Their legless bodies are not ideal for digging burrows in heavy soil, but a few snake species are more than capable of burying themselves in the sand to hide from predators or ambush prey. Egyptian sand boas and hognose snakes are just a few of the species known for shimmying their way under the sand.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '2. There is a snake species that can be mistaken for a worm.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'This may be the longest worm you have ever seen, at a maximum adult length of 13 inches, but these little snakes have an otherwise impressive disguise. Silky smooth scales, a brown-colored body, tiny eyes, and smooth pointed ends make this species easily mistakable for an earthworm. To enhance their worm-like impression, worm snakes, Carphophis amoenus, also spend much of their time burrowing under loose debris in the forest.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '3. Not all snake fangs are the same.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Snakes’ fangs are grouped into three major categories; solenoglyphous, proteroglyphous, and opisthoglyphous. Solenoglyphous snakes are typically venomous, and their extra-long fangs are attached to their jaw by a hinge so they can be folded up when not in use. Proteroglyphous snakes have fangs that can not be folded; instead, their fangs are much shorter than other species. Opisthoglyphous snakes are interesting because their fangs are located in the back of their mouth.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '4. Sometimes you can tell if a snake is venomous by the shape of its head.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'With thousands of snake species in existence, learning every species to differentiate between venomous and nonvenomous snakes would be very difficult. Luckily, many venomous snakes have triangular-shaped heads due to the placement of their venom glands, making them easier to identify from afar. Some nonvenomous snakes will puff their heads to mimic this look, so when in doubt, it’s best to keep your distance.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '5.Snakes’ jaws can stretch.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Ever wish you could fit that Big Mac in one bite? Well, snakes are born will a built-in solution to eating large meals without chewing. Their jaw structure is held together with flexible ligaments instead of joints, so they can eat items that are larger than their own head, like eggs and other large animals. \n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '6. Sea snakes and eels are different.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Sea snakes have a smooth, hydrodynamic build and move gracefully through the water. Their movements and appearance can cause people to misidentify them as eels, but the two are significantly different. Sea snakes breathe air and can live on land, while eels have fins, gills, and more of a flat ribbon-like body. One thing they do have in common? A pretty serious bite.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '7. Some snake species give birth to live young.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Snakes are reptiles, so it only makes sense to assume that they lay eggs, but that assumption is not completely accurate. Ovoviviparous is a word used to describe snakes that give birth to their young in an amniotic sack instead of an egg. This is a rare version of reproduction in snakes and only exists in a few species, like the copperhead.\n\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '8. Snakes have a sixth sense.\n\n',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Pit vipers, and a few other species of snake, are known for heat-sensing organs on their face. These organs allow them to direct live prey and predators, especially when it is too dark for their eyes to see clearly. Studies have suggested that this sixth sense can be used to sense heat up to one meter away.\n\n\n',
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
