import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:zoo/services/card.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {

  List<Quote> animals = [
    Quote (number: '/page1', animal: 'Tiger'),
    Quote (number: '/page2', animal: 'Dolphin'),
    Quote (number: '/page3', animal: 'Lion'),
    Quote (number: '/page4', animal: 'Crocodile'),
    Quote (number: '/page5', animal: 'Giraffe'),
    Quote (number: '/page6', animal: 'Snake'),
    Quote (number: '/page7', animal: 'Peacock'),
    Quote (number: '/page8', animal: 'Elephant'),
    Quote (number: '/page9', animal: 'Zebra'),
  ];

  bool isLoadingVertical = false;

  @override
  void initState(){
    _loadMoreVertical();
    super.initState();
  }

  Future _loadMoreVertical() async{
    setState(() {
      isLoadingVertical = true;
    });
    await new Future.delayed(const Duration(seconds:2));
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
        toolbarHeight: 100,
        title: Text('GALLERY',style: TextStyle(color: Colors.white,letterSpacing:2.0,fontWeight: FontWeight.bold,fontSize: 20.0),),
        centerTitle: true,
        leading: Transform.scale(
          scale: 2,
          child: IconButton(
            icon: Icon(Icons.exit_to_app_rounded , color: Colors.white,),
            onPressed: (){
              Navigator.pushNamed(context, '/home');
            },
          ),
        ),
        leadingWidth: 80,
        backgroundColor: Colors.green[800],
        elevation: 30.0,
      ),
      body:
      LazyLoadScrollView(
        isLoading: isLoadingVertical,
        onEndOfPage: () => _loadMoreVertical(),
        child: Scrollbar(
          child: ListView(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all (8.0),
              ),
              Column(
                children: animals.map((animal) => Card_Template(
                    animal:animal)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

