import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  List<ModelClass> name = [
    ModelClass(
      leading: 'assets/dp1.png',
      title: 'Hassan',
      subtitle: 'Hey, are you free for call',
      trailing1: '7:30 AM',
      trailing2: '3',
    ),
    ModelClass(
      leading: 'assets/dp2.png',
      title: 'Adeel',
      subtitle: 'Sure, what time works for you?',
      trailing1: '7:40 AM',
      trailing2: '11',
    ),
    ModelClass(
      leading: 'assets/dp3.png',
      title: 'Bilal',
      subtitle: 'How about 7Pm?',
      trailing1: '1:30 AM',
      trailing2: '2',
    ),
    ModelClass(
      leading: 'assets/dp4.png',
      title: 'Muzammil',
      subtitle: 'good see you',
      trailing1: '12:49 AM',
      trailing2: '15',
    ),
    ModelClass(
      leading: 'assets/dp5.png',
      title: 'Hussan',
      subtitle: 'Great, see you then.',
      trailing1: '12:07 AM',
      trailing2: '1',
    ),
    ModelClass(
      leading: 'assets/dp6.png',
      title: 'Aliyan',
      subtitle: 'Okay',
      trailing1: 'Yesterday',
      trailing2: '7',
    ),
    ModelClass(
      leading: 'assets/dp7.png',
      title: 'Khalid',
      subtitle: 'Did you finish the report?',
      trailing1: 'Yesterday',
      trailing2: '4',
    ),
    ModelClass(
      leading: 'assets/dp8.png',
      title: 'Waleed',
      subtitle: 'Almost done, Just need to review it.',
      trailing1: 'Yesterday',
      trailing2: '10',
    ),
    ModelClass(
      leading: 'assets/dp9.png',
      title: 'M.ALi',
      subtitle: 'Let me know if you need help.',
      trailing1: '3/15/25',
      trailing2: '6',
    ),
    ModelClass(
      leading: 'assets/dp10.png',
      title: 'Naveed',
      subtitle: 'Thanks,will do!',
      trailing1: '3/12/25',
      trailing2: '20',
    ),
    ModelClass(
      leading: 'assets/dp11.png',
      title: 'Nawaz',
      subtitle: 'Also do not forget the meeting tomorrow',
      trailing1: '3/12/25',
      trailing2: '5',
    ),
    ModelClass(
      leading: 'assets/dp12.png',
      title: 'Hamza',
      subtitle: 'Oh right, what time is it again?',
      trailing1: '3/9/25',
      trailing2: '1',
    ),
    ModelClass(
      leading: 'assets/dp13.png',
      title: 'Saad',
      subtitle: '10 AM.i will send you the link.',
      trailing1: '3/7/25',
      trailing2: '3',
    ),
    ModelClass(
      leading: 'assets/dp14.png',
      title: 'Salman',
      subtitle: 'Perfect, thanks!',
      trailing1: '3/2/25',
      trailing2: '11',
    ),
    ModelClass(
      leading: 'assets/dp15.png',
      title: 'Basit',
      subtitle: 'No problem. see you tomorrow!',
      trailing1: '2/27/25',
      trailing2: '9',
    ),
    ModelClass(
      leading: 'assets/dp16.png',
      title: 'Abdulah',
      subtitle: 'See you!',
      trailing1: '2/12/25',
      trailing2: '3',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen
              ),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/dp8.png'),),
                accountName: Text("Muhammad Daniyal"),
                accountEmail: Text("mdanikhan11197@gmail.com")
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black12),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.blueGrey)),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatAccountscreen(acname: name[index].title.toString(), acdp: name[index].leading.toString())));
                          },
                            // Navigator.push(
                            //     context,
                                // MaterialPageRoute(
                                //     builder: (context) => ChatAccountscreen(
                                //         name: accounts[index].title.toString())));
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(name[index].leading.toString()),
                          ),
                          title: Text(name[index].title.toString()),
                          subtitle: Text(name[index].subtitle.toString()),
                          trailing: Column(
                            children: [
                              Text(name[index].trailing1.toString()),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 11,
                                child: Text(
                                  name[index].trailing2.toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class ModelClass {
  String? leading;
  String? title;
  String? subtitle;
  String? trailing1;
  String? trailing2;
  ModelClass(
      {required this.leading,
      required this.title,
      required this.subtitle,
      required this.trailing1,
      required this.trailing2});
}

class ChatAccountscreen extends StatelessWidget {
  String acname;
  String acdp;
  //ChatAccountscreen({super.key, required this.name});
   ChatAccountscreen({super.key, required this.acname,required this.acdp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(acdp)),
            SizedBox(
              width: 10,
            ),
            Text(acname),
          ],
        ),
      ),
    );
  }
}

