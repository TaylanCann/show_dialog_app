import 'package:flutter/material.dart';
import 'package:show_dialog_app/ShowDialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ShowDialog.showMyDialog(
                  context, "Text what you want to say ", "Text Answer1", () {
                Navigator.pop(context);
                print('Func1');
              });
            },
            child: Center(
              child: Container(
                width: 100,
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Show Dialog",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              ShowDialog.showMyDialog(
                  context,
                  "Can be used for yes no questions",
                  "Yes",
                  () {
                    print('Some Funcs');
                    Navigator.pop(context);
                  },
                  textBtnAns2: "No",
                  exit: () {
                    print('Some Funcs too');
                    Navigator.pop(context);
                  });
            },
            child: Center(
              child: Container(
                width: 100,
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Show Dialog 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
