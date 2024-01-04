import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dai_tuong_le_duc_anh/meme_detail.dart';
import 'package:http/http.dart' as http;

import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://api.imgflip.com/get_memes";
  var res, memes;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await http.get(Uri.parse(api));
    memes = jsonDecode(res.body)['data']['memes'];
    print(memes.toString());
    setState(() {});
  }

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
          title: Text("App Memes"),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: res != null
              ? ListView.builder(
                  itemCount: memes.length,
                  itemBuilder: (context, index) {
                    var meme = memes[index];
                    return ListTile(
                      leading: Hero(
                        tag: meme["id"],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            meme["url"] ??
                                "http://www.4motiondarlington.org/wp-content/uploads/2013/06/No-image-found.jpg",
                          ),
                        ),
                      ),
                      title: Text(
                        "${meme["name"]}",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        "${meme["id"]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MemeDetail(meme: meme),
                          ),
                        );
                      },
                    );
                  },
                )
              : CircularProgressIndicator(backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
