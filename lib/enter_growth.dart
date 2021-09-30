import 'package:flutter/material.dart';
import 'constant.dart';
class enterGrowth extends StatefulWidget {
  const enterGrowth({Key? key}) : super(key: key);

  @override
  _personalEmpireState createState() => _personalEmpireState();
}

class _personalEmpireState extends State<enterGrowth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title:const Text('Personal Empire',
            style: KappBarTextStyle,
          ),
          centerTitle: true,
          backgroundColor: appbarBackgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [

                  const SizedBox(height: 20,),
                  const Center(
                    child: Text(
                      "My personal Empire ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        color:Colors.white
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
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

                            onTap: () {
                             // Navigator.pushNamed(context, '/growth');
                            },
                            child: const Center(child: Text('personal documents', style: KbuttonlastTextstyle),),
                          ),)
                    ),
                  ),
              const SizedBox(height: 30),
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

                        onTap: () {
                          // Navigator.pushNamed(context, '/growth');
                        },
                        child: const Center(child: Text('Saving Plans', style: KbuttonlastTextstyle),),
                      ),)
                ),
              ),
              const SizedBox(height: 30),
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

                        onTap: () {
                          // Navigator.pushNamed(context, '/growth');
                        },
                        child: const Center(child: Text('Empire Wealth Shop', style: KbuttonlastTextstyle),),
                      ),)
                ),
              ),
                ],
              )

        )
    );
  }
}
