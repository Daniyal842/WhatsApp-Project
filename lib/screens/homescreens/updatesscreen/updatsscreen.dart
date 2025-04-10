import 'package:flutter/material.dart';

class Updatsscreen extends StatefulWidget {
  const Updatsscreen({super.key});

  @override
  State<Updatsscreen> createState() => _UpdatsscreenState();
}

class _UpdatsscreenState extends State<Updatsscreen> {
  List<ModelClass> name = [
    ModelClass(
      leading: 'assets/dp2.png',
      title: 'Adeel',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp3.png',
      title: 'Bilal',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp4.png',
      title: 'Muzammil',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp5.png',
      title: 'Hussan',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp6.png',
      title: 'Aliyan',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp7.png',
      title: 'Khalid',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp8.png',
      title: 'Waleed',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp9.png',
      title: 'M.ALi',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp10.png',
      title: 'Naveed',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp11.png',
      title: 'Nawaz',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp12.png',
      title: 'Hamza',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp13.png',
      title: 'Saad',
      subtitle: 'Today',
    ),
    ModelClass(
      leading: 'assets/dp14.png',
      title: 'Salman',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp15.png',
      title: 'Basit',
      subtitle: 'Yesterday',
    ),
    ModelClass(
      leading: 'assets/dp16.png',
      title: 'Abdulah',
      subtitle: 'Yesterday',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Updates",style: TextStyle(color: Colors.black54),),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
          SizedBox(width: 10,)
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Status",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/dp1.png'),
            ),
            title: Text("My status"),
            subtitle: Text("Tap to add status update"),
          ),
          ListTile(
            title: Text(
              "Recent updates",
              style: TextStyle(fontSize: 15, color: Colors.black87),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Statusscreen(acdp: name[index].leading.toString(), acname: name[index].title.toString(), statuspic: name[index].leading.toString())));
                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 22,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(name[index].leading.toString()),
                          ),
                        ),
                        title: Text(name[index].title.toString()),
                        subtitle: Text(name[index].subtitle.toString()),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModelClass {
  String? leading;
  String? title;
  String? subtitle;
  ModelClass({
    required this.leading,
    required this.title,
    required this.subtitle,
  });
}

class Statusscreen extends StatefulWidget {
  String acdp;
  String acname;
  String statuspic;
   Statusscreen({super.key, required this.acdp,required this.acname,required this.statuspic});

  @override
  State<Statusscreen> createState() => _StatusscreenState();
}

class _StatusscreenState extends State<Statusscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Updatsscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(widget.acdp),
            )
          ],
        ),
      ),
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.statuspic),fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}
