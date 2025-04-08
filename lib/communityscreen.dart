import 'package:flutter/material.dart';

class Communityscreen extends StatelessWidget {
  const Communityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/community.png'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30,),
            Text("Stay connected with a community"),
          ],
        ),
      ),
    );
  }
}
