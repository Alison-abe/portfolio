import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class sayhi extends StatelessWidget {
  const sayhi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(child: 
         Column(
        children: [
          Container(
            child:const Padding(padding: EdgeInsets.only(
              left: 80,
              top: 30,
              right:5
            ),
            child:Text("CONTACT INFO",style: 
            TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
            ,)
            ,),
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                  Color(0xFFF6A064),
                  Color.fromARGB(255, 225, 98, 75),
                  Color(0xFFEA7A6C),
              ])
            ),
            
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFEA7A6C),
                  Color(0xFFE27823),
                ]),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60)
              ),
              color:  Color.fromARGB(255, 208, 137, 31),
            ),
            ),
           SingleChildScrollView(
              child: Column(
                children: [
                 const SizedBox(height: 30,),
                  const ListTile(
                     title: Text("Email",style: TextStyle(color: Colors.white)),
                     leading: Icon(Icons.email,color: Colors.white,),
                     subtitle: Text("alisonabrahamwilson@gmail.com",style: TextStyle(color: Colors.white),),
                   ),
                  const SizedBox(height: 30,),
                  const ListTile(
                     title: Text("Phone",style: TextStyle(color: Colors.white)),
                     leading: Icon(Icons.phone,color: Colors.white),
                     subtitle: Text("9061103924",style: TextStyle(color: Colors.white)),
                   ),
                  const SizedBox(height: 30,),
                  const ListTile(
                     title: Text("Address",style: TextStyle(color: Colors.white)),
                     leading: Icon(Icons.home,color: Colors.white),
                     subtitle: Text("Abe House, Elampal PO Punalur,Kollam,Kerala",style: TextStyle(color: Colors.white)),
                   ),
                  const SizedBox(height: 30,),
                  const SizedBox(height: 40,),
                  const SizedBox(height: 30,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                       Icon(Icons.link,color: Colors.white),
                       SizedBox(width: 10,),
                       Icon(Icons.phone,color: Colors.white),
                       SizedBox(width: 10,),
                       Icon(Icons.home,color: Colors.white),
                       SizedBox(width: 10,),
                       Icon(Icons.email,color: Colors.white),
                    ],
                   )
                ],
              ),
            )
        ],
      ) ,
      )
      
    );
  }
}