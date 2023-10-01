import 'package:chat/models/person.dart';
import 'package:chat/screens/chat_item_screen.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
   CallScreen({super.key});
  
    List<Person> chats =[
   
   Person(
    name: "Programmer",
    image: "assets/Abeer.jpeg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Athari",
    image: "assets/Athari.jpeg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
     name: "Ahed",
    image: "assets/Ahed.jpeg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
     name: "Uhood",
    image: "assets/Uhood.jpeg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Abeer",
    image: "assets/Abeer.jpeg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Thuraya",
    image: "assets/Thrthr.jpeg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
     name: "Fajer",
    image: "assets/fajer.jpeg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
   name: "Alzain",
    image: "assets/Alzien.jpeg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
    name: "Meera",
    image: "assets/Thrthr.jpeg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
    name: "Mouza",
    image: "assets/Mouza.jpeg",
    message: "Hi, Programmer how are you?"
   ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
         
        body:Center(
          child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                  PersonalChat(person: chats[index],
                  
                  )
                
                
                ));
      
      
              },
              leading:  CircleAvatar(
              
              backgroundImage: AssetImage(chats[index].image!)),
              title: Text(chats[index].name!, style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(chats[index].message!),
              trailing: Column(
                children: [
                  Text("Friday",style: TextStyle(color: Color.fromARGB(255, 24, 139, 83)),),
                  Icon(Icons.check_circle,color: Colors.blue,)
                
                ],
              )
          
      
            );
          }
        ),
        ) ,

    );
  }
}