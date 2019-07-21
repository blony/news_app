import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/detail/share_sheet.dart';
import 'package:news_app/moudle/pub.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'comment.dart';
class DetailPage extends StatefulWidget {
  final int id;
  DetailPage(this.id);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var detail;
  List recommnets;
  bool _isFollow;
  //String _followText = '';
_getDetail() async{
 var detailData = await PubMoudle.httpRequest('get', '/getDetail?id=${widget.id}');
 setState(() {
   detail = detailData.data['data'];
   recommnets = detail['recommnets'];
   _isFollow = detail['is_followed'];
 });
} 
 _follow(){
      setState(() {
        if (_isFollow) {
          _isFollow = false;
          // _followText = '关注';
        } else {
          _isFollow = true;
        //  _followText = '已关注';
        }
      });
}
@override
  void initState() {
    super.initState();
   Future.delayed(Duration(seconds: 1),(){
      _getDetail();
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: detail == null? Center(
          child: CircularProgressIndicator(),
        ) : CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(detail['title']),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: (){
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context){
                      return ShareSheet();
                    }
                  );
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(detail['title'],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                  ),)
              )
            ]),
          ),
          //作者 
          MediaQuery.removePadding(
            context: context,
            removeBottom: true,
            child: SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegete(
              childBar: AppBar(
                brightness: Brightness.light, //控制系统顶部标题颜色
                elevation: 0.0,
                title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: GestureDetector(
                            onTap: (){},
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(detail['aut_photo']),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          detail['aut_name'],
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black
                            ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 85.0,
                      height: 22.0,
                      child: RaisedButton.icon(
                      onPressed: (){
                        _follow();
                      },
                      icon: Icon(
                        _isFollow == false?Icons.add:Icons.done,
                        color: Colors.white,
                        size: 12.0,
                        ),
                      label: Text(
                        _isFollow == false? '关注':'已关注',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0
                        ),),
                      elevation: 0.0,
                      color: Colors.blue,
                    ),
                    )
                  ],
                ),
              ),
                backgroundColor: Color.fromRGBO(247, 247, 247, 1),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,),
                  onPressed: (){},
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    onPressed: (){},
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 45.0,
                          height: 45.0,
                          child: GestureDetector(
                            onTap: (){},
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(detail['aut_photo']),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              detail['aut_name'],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black
                            ),),
                            SizedBox(height: 5.0,),
                            Text(
                              timeago.format(DateTime.parse(detail['pubdate'])),
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    RaisedButton.icon(
                      onPressed: (){
                        _follow();
                      },
                      icon: Icon(
                        _isFollow == false ?Icons.add :Icons.done,
                        color: Colors.white,
                        ),
                      label: Text(
                        _isFollow == false? '关注':'已关注',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      elevation: 0.0,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ),
          ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  ''' ${detail['content']} ''',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),)
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('猜你喜欢',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Wrap(
                      children: recommnets.map((value){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailPage(value['id'])
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 5.0),
                            width: MediaQuery.of(context).size.width /2 -20,
                            child: Text(
                              value['title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              ),
                          ),
                        );
                      }).toList()
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.red
                        ),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up,
                          color: Colors.red),
                          SizedBox(width: 4.0,),
                          Text('点赞',
                          style: TextStyle(
                            color: Colors.red
                          ),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.delete),
                          SizedBox(width: 4.0,),
                          Text('不喜欢')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Comment()
            ]),
          )
        ],
      ),
    );
  }
}

class _SliverAppBarDelegete extends SliverPersistentHeaderDelegate {
  final Widget child;
  final Widget childBar;
  _SliverAppBarDelegete({this.child,this.childBar});

  @override
  double get minExtent => 90.0;

  @override
  double get maxExtent => 90.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(shrinkOffset);
    if (shrinkOffset > 0 ) {
       return SizedBox(child: childBar,);
    } else {
       return SizedBox(child: child,);
    }

  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}