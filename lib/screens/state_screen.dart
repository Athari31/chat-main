// import 'package:chat/components/listtileItem.dart';
import 'package:chat/components/listtile_item.dart';
import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
       body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      SizedBox(height: 20,),
      Container(
    
        child: const ListTile(
              
                leading:  CircleAvatar(
                
                backgroundImage: AssetImage("assets/Mouza.jpeg")),
                title: Text("My status", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                subtitle: Text("Today, 12:30 am", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.more_vert),
            
        
              )
      ),
      Container(
        margin: EdgeInsets.only(left: 20,top: 30),
        child: Text("Recent Updates", style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.bold))),
      ListWidget(title: "Athari",subtitle: "Today, 10:30 ",image: "assets/Athari.jpeg"),
      ListWidget(title: "Ahed",subtitle: "Today, 1:50 ",image: "assets/Ahed.jpeg"),
    
       SizedBox(height: 20,),
      Container(
         margin: EdgeInsets.only(left: 20),
        child: Text("View Updates", style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.bold))),
      ListWidget(title: "Abeer",subtitle: "Today, 7:15 ",image: "assets/Abeer.jpeg"),
      ListWidget(title: "Uhood",subtitle: "Today, 5:22 ",image: "assets/Uhood.jpeg"),
    
      ]),
    
      ),
    );
  }
}