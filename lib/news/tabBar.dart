import 'package:flutter/material.dart';

class TabBarBtn extends StatelessWidget {
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
          tabs: <Widget>[
              Tab(
                text: 'HTML',
              ),
              Tab(
                text: 'Java',
              ),
              Tab(
                text: 'Python',
              ),
              Tab(
                text: 'C#',
              ),
              Tab(
                text: 'JavaScript',
              ),
              Tab(
                text: 'Go',
              )
            ],
          ),
      );
  }
}