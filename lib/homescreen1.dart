import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/knowme.dart';
import 'package:portfolio/sayhi.dart';
//https://img.pikbest.com/png-images/qiantu/hand-drawn-cartoon-girl-wearing-glasses_2720821.png!bw700
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double>_animation;
  @override
    void initState(){
      super.initState();
      _controller=AnimationController(duration: const Duration(seconds:5),vsync:this)..repeat(reverse:true);
      _animation=Tween<double>(begin:1,end:0 ).animate(_controller);
    }
    @override
    void dispose(){
      _controller.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(child: Center(
          child: 
          Column(
        children:[
         const SizedBox(height: 30,),
         const SizedBox(height: 30,),
          FadeTransition(opacity: _animation,
          child: const Text("PORTFOLIO",
          style: TextStyle(fontFamily: "Courier",fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 208, 137, 31)),
          ),),
           const SizedBox(height: 30,),
          const Expanded(
            flex: 1,
            child:
           CircleAvatar(
           backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 200,
            backgroundColor: Colors.transparent,
          ) ,),
          const SizedBox(height: 30,),
          const Text("Hi there,I am",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
          const SizedBox(height: 10,),
          const  Text("Alison Abe Wilson",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)
          ,const Padding(padding:EdgeInsets.all(60) ,
          child: Text("-A passionate and dedicated student,\npersuing BTech in Computer Science Engineering from CET,Trivandrum",
          style: TextStyle(color: Colors.white),
          ) ,)
          ,
          Expanded(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,            
            children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:((context) =>const knowme() )
              )
            );
            }, child:const Text("Know me"),
            style: ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 208, 137, 31),
            )
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:((context) =>const sayhi() )
              )
            );
            }, child:const Text("Say hi"),
            style: ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 208, 137, 31),
            ),
            )
          ],),)
        ],
      ),
      ))
    );
  }
}