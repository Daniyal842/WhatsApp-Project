import 'package:flutter/material.dart';
import 'package:wp2ui/screens/homescreens/callsscreen/callsscreen.dart';
import 'package:wp2ui/screens/homescreens/chatscreen/chatscreen.dart';
import 'package:wp2ui/screens/homescreens/communityscreen/communityscreen.dart';
import 'package:wp2ui/screens/homescreens/updatesscreen/updatsscreen.dart';

class Whatsappuiscreen extends StatefulWidget {
  const Whatsappuiscreen({super.key});

  @override
  State<Whatsappuiscreen> createState() => _WhatsappuiscreenState();
}

class _WhatsappuiscreenState extends State<Whatsappuiscreen> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 92,
              child: select==1?Chatscreen() : select==2?Updatsscreen() : select==3?Communityscreen() : Callsscreen()
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      select=1;
                      setState(() {

                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.message_outlined,color: select==1? Colors.green : Colors.black,),
                          Text("Chats",style: TextStyle(color: select==1? Colors.green : Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      select=2;
                      setState(() {

                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.update_outlined,color: select==2? Colors.green : Colors.black,),
                          Text("Updates",style: TextStyle(color: select==2? Colors.green : Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      select=3;
                      setState(() {

                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.group,color: select==3? Colors.green : Colors.black,),
                          Text("Communities",style: TextStyle(color: select==3? Colors.green : Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      select=4;
                      setState(() {

                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.phone,color: select==4? Colors.green : Colors.black,),
                          Text("Calls",style: TextStyle(color: select==4? Colors.green : Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  // TextButton(
                  //   child: Text("Chats",style: TextStyle(color: select==1? Colors.green : Colors.black),),
                  //   onPressed: (){
                  //     select=1;
                  //     setState(() {
                  //
                  //     });
                  //   },
                  // ),
                  // TextButton(
                  //   child: Text("Updats",style: TextStyle(color: select==2? Colors.green : Colors.black),),
                  //   onPressed: (){
                  //     select=2;
                  //     setState(() {
                  //
                  //     });
                  //   },
                  // ),
                  // TextButton(
                  //   child: Text("Community",style: TextStyle(color: select==3? Colors.green : Colors.black),),
                  //   onPressed: (){
                  //     select=3;
                  //     setState(() {
                  //
                  //     });
                  //   },
                  // ),
                  // TextButton(
                  //   child: Text("Calls",style: TextStyle(color: select==4? Colors.green : Colors.black),),
                  //   onPressed: (){
                  //     select=4;
                  //     setState(() {
                  //
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
