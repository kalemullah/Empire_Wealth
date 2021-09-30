import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'button.dart';
class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final _form = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  @override
  Future handleSingin() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: nameController.text.trim(),
        password: passwordController.text,
      );
      showDialog(context: context, builder: (context){
        return Dialog(
          child: AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("Registration Success  "),
            actions: <Widget>[

              new TextButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.pushNamed(context, '/email');
                },
              ),
            ],
          ),
        );
      });
    } catch (e) {
      print(e);
    }
  }
  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert!!"),
          content: new Text("Registration Success  "),
          actions: <Widget>[
            new TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.pushNamed(context, '/email');
              },
            ),
          ],
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.black,
      appBar: AppBar(
        title:const Text('Empire wealth',
        style: KappBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: appbarBackgroundColor,
      ),
        body:Form(
            key: _form,
            child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Empire Wealth',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child:  TextField(
                    controller: nameController,
                    cursorColor:  Colors.white,
                    style: TextStyle(color:Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'enter your E-mail',labelStyle: TextStyle(color:  Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:  TextFormField(
                     controller: passwordController,
                      validator: (val){
                        if(val!.isEmpty)
                          return 'Empty';
                        return null;
                      },
                    style: TextStyle(color:Colors.white),
                    obscureText: true,
                    cursorColor:  Colors.white,
                   // controller: passwordController,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',labelStyle: TextStyle(color:  Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:  TextFormField(
                    controller: newpasswordController,
                      validator: (val){
                        if(val!.isEmpty)
                          return 'Empty';
                        if(val != passwordController.text)
                          return 'Not Match';
                        return null;
                      },
                    style: TextStyle(color:Colors.white),
                    obscureText: true,
                    cursorColor:  Colors.white,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'confirm your Password',labelStyle: TextStyle(color:  Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),

                Container(
                  margin: const EdgeInsets.only(left: 45,right: 45,bottom: 10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                                image:AssetImage("assects/btn.jpg"),
                                fit:BoxFit.cover
                            )),
                        child: GestureDetector(

                          onTap: handleSingin,
                          child: const Center(child: Text('Register', style: KbuttonlastTextstyle),),
                        ),)
                  ),
                ),
              ],
            )))
    );
  }
}



