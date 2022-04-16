import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_fathan/profilepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  },
                ),
              ),
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn.autonomous.ai/static/upload/images/common/upload/20200930/6f2cce37d2c.jpg'),
                    )),
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://asset.kompas.com/crops/vKjMgenRx6IGPtJsJvucFn3_P_Y=/0x0:636x424/750x500/data/photo/2017/12/04/2417066994.jpg'),
                        )),
                    child: Center(
                      child: Text(
                        'Mouse',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://cf.shopee.co.id/file/a246bb0856915fa6c64f458b6303121e'),
                        )),
                    child: Center(
                      child: Text(
                        'Monitor',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
