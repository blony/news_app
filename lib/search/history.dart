import 'package:flutter/material.dart';

class SearchHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  '搜索历史'
                  ,style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.delete,
                    size: 20.0,
                    )
                )
            ],
          ),
        ),
        Wrap(  //自动换行组件
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey[200]
                  ),
                  top: BorderSide(
                    color: Colors.grey[200]
                  )
                )
              ),
               width: MediaQuery.of(context).size.width / 2,
               child: Text('data'),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey[200]
                  ),
                  top: BorderSide(
                    color: Colors.grey[200]
                  )
                )
              ),
               width: MediaQuery.of(context).size.width / 2,
               child: Text('data'),
            ),Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey[200]
                  ),
                  top: BorderSide(
                    color: Colors.grey[200]
                  )
                )
              ),
               width: MediaQuery.of(context).size.width / 2,
               child: Text('data'),
            ),Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey[200]
                  ),
                  top: BorderSide(
                    color: Colors.grey[200]
                  )
                )
              ),
               width: MediaQuery.of(context).size.width / 2,
               child: Text('data'),
            )
          ],
        ),
        Divider()
      ],
    );
  }
}