import 'package:flutter/material.dart';
import 'constant.dart';
import 'button.dart';
class email extends StatefulWidget {
  const email({Key? key}) : super(key: key);

  @override
  _emailState createState() => _emailState();
}

class _emailState extends State<email> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                        'Thanks for signing ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        ' please provide your E-mail \n How we can contact you ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )
                )
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(10),
              child:  TextField(
               // validator:(String value) {
                //  if (value.isEmpty) {
                 //   return 'Please enter some text';
                //  }
                //  return null;
               // },
                controller: emailController,
                style: const TextStyle(color:Colors.white),
                cursorColor:  Colors.white,
                //controller: nameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',labelStyle: TextStyle(color:  Colors.white),
                ),
              ),
            ),
            SizedBox(height: 80,),
            const Button(
              '/last',
              'E-mailed',
            )
          ],
        ),
    ) ,
    );
  }
}
