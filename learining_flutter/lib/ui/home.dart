import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint("Tapped Button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(onPressed: () => debugPrint("Email tapped"), icon: const Icon(Icons.email)),
          IconButton(onPressed: _tapButton(), icon: const Icon(Icons.access_alarm)),
          IconButton(onPressed: _tapButton(), icon: const Icon(Icons.add_a_photo)),
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

            // InkWell(
            //   child: Text("Click me!",
            //     style: TextStyle(fontSize:23.4),
            //   ),
            //   onTap: () => debugPrint("tapped..."),
            //   borderRadius: BorderRadius.circular(50),
            // )
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


