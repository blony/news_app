import 'package:flutter/material.dart';

import 'content.dart';

class CollectPage extends StatelessWidget {

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '我的收藏',
    ),
    Tab(
      text: '我的历史',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('收藏/历史'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.blue,
                labelStyle: TextStyle(
                  fontSize: 16.0
                ),
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.blue[400],
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2.0,
                tabs: myTabs
              ),
            )
          ),
        ),
        body: TabBarView(
          children: myTabs.map((value){
            return CollectContent(value.text);
          }).toList()
        ),
      ),
    );
  }
}