import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class knowme
 extends StatelessWidget {
  const knowme
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(child: 
       SingleChildScrollView(child: 
      Column(
        children: [
         const  SizedBox(height:30),
          const ListTile(
            leading: Icon(Icons.badge,color: Colors.orange),
            title: Text("Skills",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),),            
          ),
          const ListTile(
            title: Text("Physics",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("Chemistry",style: TextStyle(color:Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("Mathematics",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("Flutter",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("HTML",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("CSS",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Intermediate",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("JavaScript",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Basic",style: TextStyle(color: Colors.white),),                
          ),
          const ListTile(
            title: Text("Hive-Dart",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Basic",style: TextStyle(color: Colors.white),),                
          ),
          const SizedBox(height:30),
          const  ListTile(
            leading: Icon(Icons.auto_graph,color: Colors.orange),
            title: Text("Education",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),),            
          ),
         const  SizedBox(height:30),
          const ListTile(
            title: Text("B-Tech,Computer Science",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("College of Engineering Trivandrum\n2020-2024",style: TextStyle(color: Colors.white),),                
          ),
          const SizedBox(height:30),
          const ListTile(
            title: Text("Senior Secondary (XII),Science",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("KE Mannanam,Kottayam\n(KERALA Board)\nYear of Completion:2020\nPercentage:98.2%",style: TextStyle(color: Colors.white),),                
          ),
         const  SizedBox(height:30),
          const ListTile(
            title: Text("Secondary (X)",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("Sabarigiri Senior Secondary School,\nPunalur,Kollam\n(CBSE Board)\nYear of Completion:2018\nCGPA:9.4/10",style: TextStyle(color: Colors.white),),                
          ),
          const SizedBox(height:30),
            ListTile(
            leading: Icon(Icons.business_center,color: Colors.orange),
            title: Text("Projects",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),),            
            onTap:() {
              showDialog(context: context, builder:(context){
                return Dialog(
                  backgroundColor: Colors.black,
                     child: Column(
                      children: [
                        Expanded(child:
                        PageView(
                          children: [
                            Padding(padding:EdgeInsets.all(20) 
                            ,
                            child: Container(
                           decoration: BoxDecoration(color: Color.fromARGB(255, 208, 137, 31 ),
                          image: DecorationImage(image: ExactAssetImage('assets/images/calculater.jpeg'),
                          fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(35)
                        ),
                        ) ,),
                           Padding(padding:EdgeInsets.all(30) 
                            ,
                            child: Container(
                           decoration: BoxDecoration(color: Color.fromARGB(255, 208, 137, 31 ),
                          image: DecorationImage(image: ExactAssetImage('assets/images/notes.jpeg'),
                          fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(35)
                        ),
                        ) ,),
                         
                          ],
                        )
                        )
                      ],
                     ),
                );
              });
            }, 
          ),
           const SizedBox(height:30),
           const ListTile(
            title: Text("Calculator",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("https://github.com/Alison-abe/calculater",style: TextStyle(color: Colors.white),), 
            
          ),
           const SizedBox(height:30),
          const ListTile(
            title: Text("Mynotes",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("https://github.com/Alison-abe/notes",style: TextStyle(color: Colors.white),), 

          ),
           const SizedBox(height:30),
          const ListTile(
            title: Text("Github",style: TextStyle(color: Color.fromARGB(255, 208, 137, 31)),),
            subtitle: Text("https://github.com/Alison-abe",style: TextStyle(color: Colors.white),),                
          ),
        ],
      ),
      )
    )
    );
  }
}