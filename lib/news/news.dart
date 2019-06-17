import 'package:flutter/material.dart';
import 'package:news_app/news/searchBox.dart';
import 'package:news_app/news/tabBar.dart';
import 'package:news_app/news/tabContent.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
      appBar: AppBar(
        title: SearchBox(),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize:Size.fromHeight(48.0),
          child: TabBarBtn()
        )
      ),
      body: TabBarView(
        children: <Widget>[
          TabBarContent(),
           TabBarContent(),
            TabBarContent(),
             TabBarContent(),
              TabBarContent(),
               TabBarContent()
        ],
      ),
    ),
    );
  }
}