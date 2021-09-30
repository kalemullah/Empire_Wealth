import 'package:flutter/material.dart';
import 'constant.dart';
import 'button.dart';
class growthCenter extends StatefulWidget {
  const growthCenter({Key? key}) : super(key: key);

  @override
  _growthCenterState createState() => _growthCenterState();
}

class _growthCenterState extends State<growthCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title:const Text('Empire wealth',
          style: KappBarTextStyle,
          ),
          centerTitle: true,
          backgroundColor:appbarBackgroundColor,
        ),
        body:Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: const [
                  SizedBox( height: 20,),
                  Center(
                    child: Text(
                      "WELCOME to your Empire ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Your personal space for inner \n and outer growth",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:Colors.white
                      ),
                    ),
                  ),
                 SizedBox(height: 90),


                  Button(
                    '/growth',
                    'Growth center',
                  ),
              SizedBox(height: 50),
                  Button(
                    '/personalEmpire',
                    'personal   Empire',
                  ),

                ],
              )


        )
    );
  }
}

