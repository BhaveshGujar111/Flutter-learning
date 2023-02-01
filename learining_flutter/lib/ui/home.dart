// import 'dart:html';

import 'package:flutter/material.dart';


class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business Card"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget> [
            _getCard(),
            _getAvatar()
          ],
        ),
      )
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 200,
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const Text("Bhavesh Gujar",
          style: TextStyle(
              color: Colors.white ,
              fontSize: 20,
              fontWeight: FontWeight.w500),),
          const Text("bhaveshgujar475@gmail.com",
            style: TextStyle(
              color: Colors.white)
          ),
          const Text("Any Queries",
            style: TextStyle(
              color: Colors.white)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Icon(Icons.person_outline,
                color: Colors.white,
              size: 20,),

              Text("LinkedIn: @buildwithme",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(color: Colors.white, width: 1.2),
        image:const DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(onPressed: () => debugPrint("Email tapped"), icon: const Icon(Icons.email)),
          IconButton(onPressed: () => debugPrint("Alarm tapped"), icon: const Icon(Icons.access_alarm)),
          IconButton(onPressed: () => debugPrint("Photo tapped"), icon: const Icon(Icons.add_a_photo)),
          IconButton(onPressed: () => debugPrint("Account tapped"), icon: const Icon(Icons.account_balance)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () => debugPrint("Say Hello"),
          child: const Icon(Icons.call_missed)),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "First", backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Second", backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Second", backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_outlined), label: "Second", backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_sharp), label: "Second", backgroundColor: Colors.black),
      ], onTap: (int index) => debugPrint("Tapped Item: $index"),),
      
      backgroundColor: Colors.redAccent.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[

            CustomButton()
          ],

        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // final snackBar = SnackBar(content: Text("Hello Again"),);
        //
        // Scaffold.of(context).showSnackBar(snackBar);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Gesture Detector - SnackBar"),
            backgroundColor: Colors.black38,
            ));
        
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.lightBlue,
      child: Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.4,
                fontStyle: FontStyle.italic
            ),
          )
      ),
    );
  }
}
