import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'constant.dart';
import 'button.dart';
class empire_wealth extends StatefulWidget {
  const empire_wealth({Key? key}) : super(key: key);

  @override
  _empire_wealthState createState() => _empire_wealthState();
}

class _empire_wealthState extends State<empire_wealth> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding:const EdgeInsets.all(10),
                  child:const Text(
                    'Empire wealth',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child:  TextField(
                  controller: nameController,
                  style: TextStyle(color:Colors.white),
                  cursorColor:  Colors.white,
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
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:  TextField(
                  controller:passwordController,
                  style: TextStyle(color:Colors.white),
                  obscureText: true,
                //  controller: passwordController,
                  cursorColor:  Colors.white,
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
              TextButton(
                onPressed: (){
                },
                child: const Text('Forgot Password',
                style:  TextStyle(color: Colors.white),
                ),
              ),
               SizedBox(height: 20,),
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

                        onTap: () async {
                          try{
                            await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: nameController.text.trim(),
                              password: passwordController.text,
                            );
                            try{
                              Navigator.pushNamed(context, '/growthcenter');
                            }catch(err){
                              print(err);
                            }
                          }
                          catch(err){
                            print(err);
                          }
                        },
                        child: const Center(child: Text('Login', style: KbuttonlastTextstyle),),
                      ),)
                ),
              ),
             // const Button(
              //  '/growthcenter',
               // 'Login',
            //  ),
              const SizedBox(height: 20,),

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: KcontainerHeight,
                  width: KcontainerWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Does not have account?',style: TextStyle(color:Colors.white),),
                      SizedBox(width: 40,),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color:KsideColor)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerScreen');
                        },
                        padding: const EdgeInsets.all(10.0),
                        color: KbuttonColor,
                        textColor: KbuttonTextColor,
                        child: const Text("Register",
                            style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
