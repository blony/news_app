import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  final String str;
  SearchResult(this.str);
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('${widget.str}的搜索结果'),
      ),
    );
  }
}