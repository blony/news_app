import 'package:flutter/material.dart';
import 'package:news_app/moudle/pub.dart';
import 'package:news_app/news/searchBox.dart';
import 'package:news_app/news/tabBar.dart';
import 'package:news_app/news/tabContent.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  var channels =[];

  _getChannels() async{
    var data = await PubMoudle.httpRequest('get', '/getchannels');
    setState(() {
      channels = data.data['data']['channels'];
    });
  }
  @override
  void initState() {
    super.initState();
    _getChannels();
  }
  @override
  Widget build(BuildContext context) {
    return channels.length == 0 ? SizedBox(): DefaultTabController(
      length: channels.length,
      child: Scaffold(
      appBar: AppBar(
        title: SearchBox(),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize:Size.fromHeight(48.0),
          child: TabBarBtn(channels)
        )
      ),
      body: TabBarView(
        children: channels.map((value){
          return TabBarContent(value['id']);
        }).toList()
      ),
    ),
    );
  }
}