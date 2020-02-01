import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'sizeConfig.dart';
import 'AppointmentCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Sliding Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
SlidingCardController controller ;
  @override
  void initState() {
    
    super.initState();
    controller = SlidingCardController();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppointmentCard(
              onCardTapped: () {
                print('Card tapped controller can be used here ');
                if(controller.isCardSeparated == true)
                {
                  controller.collapseCard();
                }
                else
                {
                  controller.expandCard();
                }
              },
              slidingCardController: controller,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
