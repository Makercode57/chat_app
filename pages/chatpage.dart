import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF553370),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child:Column(children:[
Padding(
  padding: const EdgeInsets.only(left: 10.0),
  child: Row(children: [
    Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xffc199cd),),
    SizedBox(width: 90.0,),
    Text(
                  "Rachel Chris",
                   style: TextStyle(color: Color(0Xffc199cd), 
                   fontSize: 20.0,
                   fontWeight: FontWeight.w500)
                   ),
  ],),
),
SizedBox(height: 20.0,),
Container(
  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0,bottom: 40.0),
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height/1.18,
  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
  child: Column(children: [
    Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/2),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(color: Color.fromARGB(255, 234, 236, 240), borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
      child:Text("Hi",style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight:FontWeight.w500 ),),
    ),
    SizedBox(height: 20.0,),
    Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/2),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(color: Color.fromRGBO(148, 177, 202, 1), borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),topLeft: Radius.circular(10))),
      child:Text("Hi",style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight:FontWeight.w500 ),),
    ),
    Spacer(),
    Material(
      elevation: 5.0,
      borderRadius:BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20) ),
        child: Row(children: [
       Expanded(
         child: TextField(
          decoration: InputDecoration(border: InputBorder.none,hintText: "Type a message",hintStyle: TextStyle(color: Colors.black38)),
         ),
       ),
       Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(color: Color(0xFFf3f3f3),borderRadius: BorderRadius.circular(60)),
        child: Center(child: Icon(Icons.send, color: Color(0xFFd3d3d3),))) 
      ],) ,),
    )
    
  ]),
)
      ],), ),
    );
  }
}