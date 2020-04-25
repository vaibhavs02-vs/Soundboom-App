import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

void main() async => {
  WidgetsFlutterBinding.ensureInitialized(),

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]), // To turn off landscape mode

  runApp(Soundboom())
};
class Soundboom extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound$soundNumber.wav');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(1);
                      },
                      child: Image(
                        image: AssetImage('images/peacock.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(2);
                      },
                      child: Image(
                        image: AssetImage('images/lion.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(3);
                      },
                      child: Image(
                        image: AssetImage('images/dog.png'),
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(4);
                      },
                      child: Image(
                        image: AssetImage('images/cow.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(5);
                      },
                      child: Image(
                        image: AssetImage('images/horse.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(6);
                      },
                      child: Image(
                        image: AssetImage('images/goat.png'),
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(7);
                      },
                      child: Image(
                        image: AssetImage('images/monkey.png'),
                        fit: BoxFit.cover,
                      height: 120,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        playSound(8);
                      },
                      child: Image(
                        image: AssetImage('images/koyal.png'),
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
