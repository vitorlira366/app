import 'package:flutter/material.dart';
import 'package:finalifpi/pages/homepagecontatos.dart';
import 'package:finalifpi/pages/homepagemaps.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Menu Principal"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(40),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/ifpi.png',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  height: 100,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contatos()));
                    },
                    child: Text('Contatos',
                        style: TextStyle(color: Colors.black, fontSize: 25)),
                  ),
                  color: Colors.greenAccent[700],
                ),
                Container(
                  width: 160,
                  height: 100,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AppMaps()));
                    },
                    child: Text('Mapas',
                        style: TextStyle(color: Colors.black, fontSize: 25)),
                  ),
                  color: Colors.greenAccent[700],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
