import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello How Are You",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Close")
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      color: Colors.teal,
                    ),
                  ],
                )
              ],
            ),

          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World',
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(
                onPressed: showBottom,
                child: Text("Click")
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
