import 'package:flutter/material.dart';
import 'constant.dart';
class last extends StatefulWidget {
  const last({Key? key}) : super(key: key);

  @override
  _emailState createState() => _emailState();
}

class _emailState extends State<last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        title: const Text('Empire Wealth',
          style:KappBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: appbarBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Center(
                    child:Column(
                      children: const [
                        Text(
                          'Thanks for Applying  ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Text(
                            ' to Join our community  chechk your E-mail \n for confirmation and access to our Empire Wealth so you too can start building your personal Empire ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        )
                      ],
                    )
                )
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ) ,
    );
  }
}
