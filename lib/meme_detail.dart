import 'package:flutter/material.dart';
import 'main.dart';

class MemeDetail extends StatelessWidget {
  final meme;

  const MemeDetail({Key? key, @required this.meme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        myColor,
        Colors.orange,
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(meme["name"]),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(meme["url"]),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "ID: ${meme["id"]}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "${meme["name"]}",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
