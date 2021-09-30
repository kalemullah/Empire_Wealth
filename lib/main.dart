import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'empire_wealth.dart';
import 'registeratiion_screnn.dart';
import 'growth_center.dart';
import 'personal_empire.dart';
import 'package:empire_wealth/email.dart';
import 'constant.dart';
import 'button.dart';
import 'last_screen.dart';
import 'enter_growth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: body(),
    //initialRoute: '/settings',
    routes: {
// When navigating to the "/" route, build the FirstScreen widget.
      '/empire_wealth': (context) => const empire_wealth(),
// When navigating to the "/second" route, build the SecondScreen widget.
      '/registerScreen': (context) => const registerScreen(),
      '/growthcenter': (context) => const growthCenter(),
      '/personalEmpire': (context) => const personalEmpire(),
      '/email': (context) => const email(),
      '/last': (context) => const last(),
      '/growth': (context) => const enterGrowth(),
// '/settings':(context) => settings(),
    },
  ));
}

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide us total height and width of our screen
    return Scaffold(
      backgroundColor:Colors.black,
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SizedBox(height: 80),
          const Center(
            child: Expanded(
              child: Text(
                "WELCOME ",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: CircleAvatar(
              radius: 90,
              //backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
              child: ClipRRect(
                child: Image.asset('assects/empire.png'),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          const SizedBox(height: 30),

          const Button(
            '/registerScreen',
            'Register ',
          ),
          const SizedBox(height: 50),
          Button(
            '/empire_wealth',
            'Signe in ',
          ),
          //const SizedBox(height: 30),
        ],
      ),
    ));
  }
}
