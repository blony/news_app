import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WorksPage extends StatelessWidget {

  final List<Tab> myTabs = <Tab>[
    Tab(text: '作品',),
    Tab(text: '公告',),
    Tab(text: '数据',)
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('宇宙无敌美少女'),
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontSize: 16.0
                ),
                indicatorColor: Colors.blue[400],
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2.0,
                tabs: myTabs,
              ),
            ),
          ),
        ),
      body: TabBarView(
        children: <Widget>[
          WorksContent(),
          NoticeContent(),
          DataContent()
        ],
      ),
      ),
    );
  }
}

class WorksContent extends StatefulWidget {
  @override
  _WorksContentState createState() => _WorksContentState();
}

class _WorksContentState extends State<WorksContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563992936920&di=326accf6a3fa2b0a9979957381f632b5&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fdali_house%2Fpics%2Fhv1%2F44%2F254%2F95%2F6242189.jpg'),
                    ),
                  title: Text(
                    'HStudio'
                    ),
                    subtitle: Text(
                     '2019-08-06' 
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '我们不一样，每个人都有不同的境遇',
                    maxLines: 1, // 最多行数
                    style: TextStyle(
                      fontSize: 16.0
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "http://via.placeholder.com/350x200",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        ),
                        SizedBox(width: 3.0,),
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "http://via.placeholder.com/350x200",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        ),
                        SizedBox(width: 3.0,),
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "http://via.placeholder.com/350x200",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton.icon(
                            label: Text('123'),
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.white,
                            onPressed: (){},
                            elevation: 0.0,
                          ),
                        ),
                        Expanded(
                          child: RaisedButton.icon(
                            label: Text('123'),
                            icon: Icon(Icons.thumb_up),
                            color: Colors.white,
                            onPressed: (){},
                            elevation: 0.0,
                          ),
                        ),
                        Expanded(
                          child: RaisedButton.icon(
                            label: Text('88'),
                            icon: Icon(Icons.star_border),
                            color: Colors.white,
                            onPressed: (){},
                            elevation: 0.0,
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NoticeContent extends StatefulWidget {
  @override
  _NoticeContentState createState() => _NoticeContentState();
}

class _NoticeContentState extends State<NoticeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            title: Text(
              '屋檐如悬崖，风铃如沧海，我等燕归来。时间被安排，演一场意外，你悄然走开',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: EdgeInsets.all(15.0),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text(
                '2018-07-08'
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            title: Text(
              '屋檐如悬崖，风铃如沧海，我等燕归来。时间被安排，演一场意外，你悄然走开',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: EdgeInsets.all(15.0),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text(
                '2018-07-08'
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            title: Text(
              '屋檐如悬崖，风铃如沧海，我等燕归来。时间被安排，演一场意外，你悄然走开',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: EdgeInsets.all(15.0),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text(
                '2018-07-08'
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DataContent extends StatefulWidget {
  @override
  _DataContentState createState() => _DataContentState();
}

class _DataContentState extends State<DataContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  '56',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                Text('粉丝数')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  '866',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                Text('累计阅读量')
              ],
            ),
          ),
        ],
      ),
    );
  }
}