import 'package:flutter/material.dart';

class TabBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '这是个大大的列表标题阿道夫',
              style: TextStyle(
                color:Colors.black,
                fontSize: 16.0
              )
            ),
            SizedBox(height: 10.0,),
            RichText(
              text: TextSpan(
                text: '置顶  ',
                style: TextStyle(
                  color: Colors.red
                  ),
                children: [
                  TextSpan(
                    text: 'Bobby  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '88评论  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '1小时前',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  )
                ]
              ),
            )
          ],
        ),
        Divider(height: 30.0,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '这是个大大的列表标题阿道夫',
              style: TextStyle(
                color:Colors.black,
                fontSize: 16.0
              )
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1/1,
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560769107599&di=5cf7b4fb1d1cdbf44d49855ec2c336f5&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160708%2Fd243976bc8ec49ed9b846f5387d0ee5a_th.jpg',
                      fit: BoxFit.cover,
                      ),
                  )
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1/1,
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560769114899&di=a78b544a1bccbbdb4947d951ceacf6b7&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20131220%2F20131220045830-569113522.jpg',
                      fit: BoxFit.cover,
                      ),
                  )
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1/1,
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560769124511&di=24eb01b69bec860f1f4d0820edbf91ba&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20170929%2Fa3aa2afcbb9e4403b4dd2d6293f785cf.gif',
                      fit: BoxFit.cover,
                      ),
                  )
                )
              ],
            ),
            SizedBox(height: 10.0,),
            RichText(
              text: TextSpan(
                text: '置顶  ',
                style: TextStyle(
                  color: Colors.red
                  ),
                children: [
                  TextSpan(
                    text: 'Bobby  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '88评论  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '1小时前',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  )
                ]
              ),
            )
          ],
        ),
        Divider(height: 30.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                  '这是个大大的列表标题阿道夫好几款趣味体育呕吐欧赔',
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 16.0
                  )
                 ),
                ),
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560769107599&di=5cf7b4fb1d1cdbf44d49855ec2c336f5&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160708%2Fd243976bc8ec49ed9b846f5387d0ee5a_th.jpg',
                      fit: BoxFit.cover,
                      ),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            RichText(
              text: TextSpan(
                text: '置顶  ',
                style: TextStyle(
                  color: Colors.red
                  ),
                children: [
                  TextSpan(
                    text: 'Bobby  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '88评论  ',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  ),
                  TextSpan(
                    text: '1小时前',
                    style: TextStyle(
                    color: Colors.grey
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      ],
    ),
    );
  }
}