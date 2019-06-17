import 'package:flutter/material.dart';

class TabBarBtn extends StatelessWidget {
  final List channels;
  TabBarBtn(this.channels);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          labelStyle: TextStyle(
            fontSize: 16.0
          ),
          indicatorColor: Colors.blue[400],
          indicatorWeight: 3.0,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
          isScrollable: true,
          tabs: channels.map((value){
            return Tab(text: value['name'],);
          }).toList()
          ),
      );
  }
}