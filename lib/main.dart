import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController Tusd = TextEditingController();
  TextEditingController userUsd = TextEditingController();
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(82, 119, 82, 1.0),
          title: Text(
            "USD TO AFG",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                ///first textfield
                Container(
                  margin: EdgeInsets.only(top: 60),
                  padding: EdgeInsets.all(20),
                  width: 150,
                  height: 120,
                  child:

                      ///for tody doller price
                      TextField(
                    controller: Tusd,
                    decoration: InputDecoration(
                      labelText: "\$Doller",
                      helperText: "Price of Doller",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(82, 119, 82, 1.0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(82, 119, 82, 1.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(14, 246, 14, 1.0),
                      )),
                    ),
                  ),
                ),

                ///second textfield
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(20),
                  width: 300,
                  height: 90,
                  child: TextField(
                    controller: userUsd,
                    decoration: InputDecoration(
                      hintText: "Enter the value of doller",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(82, 119, 82, 1.0),
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(14, 246, 14, 1.0),
                      )),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          result =
                              num.parse(userUsd.text) * num.parse(Tusd.text);
                        });
                      },
                      icon: Icon(Icons.check),
                      splashColor: Color.fromRGBO(82, 119, 82, 1.0),
                    ))
              ],
            ),
            Text("$result AFG"),
          ],
        ),
      ),
    );
  }
}
