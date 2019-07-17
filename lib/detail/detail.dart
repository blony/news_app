import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int id;
  DetailPage(this.id);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('志愿填报谨防不实信息误导'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: (){
                  print('点击了');
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('志愿填报谨防不实信息误导',
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
                              backgroundImage: NetworkImage('https://img2.woyaogexing.com/2019/06/25/5434ac6094b54878a50e331be18f2fff!400x400.jpeg'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          '流星偃月',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black
                            ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 75.0,
                      height: 22.0,
                      child: RaisedButton.icon(
                      onPressed: (){},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 12.0,
                        ),
                      label: Text(
                        '关注',
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
                              backgroundImage: NetworkImage('https://img2.woyaogexing.com/2019/06/25/5434ac6094b54878a50e331be18f2fff!400x400.jpeg'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '流星偃月',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black
                            ),),
                            SizedBox(height: 5.0,),
                            Text(
                              '一小时前',
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
                      onPressed: (){},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        ),
                      label: Text(
                        '关注',
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
                  '''    高考招生录取工作早已是阳光工程，凡是打着“必中”“精准报考”“内部消息”“与某某高校密切合作”等各类旗号的志愿填报宣传，均是挂羊头卖狗肉式的虚假宣传或有意误导，不可轻信。

    据媒体报道，近日，多地众多微信公号等自媒体纷纷预估2019年高校录取分数，若干自媒体的预估分数还得到了当事高校的“辟谣”。另有若干从事高考志愿填报指导服务的公司夸大其服务的精准性，打着“必中”等旗号进行虚假宣传或误导宣传。

    面对自媒体各种以假乱真的消息，相关高校和部门有必要提醒考生及家长，一定要保持清醒头脑，认清相关微信公号或公司的资质，正确对待高考志愿填报工作，更要谨防受到欺骗而损失钱财、耽误志愿填报的风险。考生与家长切忌病急乱投医，谨防失财又失策。

    高考志愿填报是专业性很强的生涯规划指导活动，考生及其家长应该多听取专业性强的官方机构与招生部门的建议，不要随意挑选无资质的相关公司来为自己服务，更不要轻易相信那些未经确认的专家建议或志愿填报指导。同时，高考志愿填报要重点考虑3个参考因素：一是要掌握考生考试成绩与省内排名情况；二是要弄清楚考生意向专业的招生要求（及近年录取分数）与考生的未来职业规划；三是要熟悉高校招生录取的基本原则是平行志愿，即“专业+学校”式志愿填报与录取方式。如果充分考虑了这3个要素，考生及家长也可以成为志愿填报的专家。

    而今，高考招生录取工作早已是阳光工程，凡是打着“必中”“精准报考”“内部消息”“与某某高校密切合作”等各类旗号的志愿填报宣传，均是挂羊头卖狗肉式的虚假宣传或有意误导，不可轻信。其中，部分自媒体对某些高校今年录取分数的预估是缺乏足够依据的，有的甚至带有较强的随意性和主观性，这种专业性不足的推断式建议不值得充分参考。相反，应该以考生所在省（市）考试招生机构的官方网站或官方微信公众号为直接依据，也可以参考拟报考高校招生部门的官方网站或官方微信公众号。

    尤其需要注意的是，上海、浙江、北京、山东等省份陆续启动新一轮高考改革，实施“两依据一参考”招生录取模式改革，“两依据”即为“统一高考+学业水平考试”，“一参考”即为“综合素质评价”。高考录取总成绩为“3+3”，前一个“3”是统一高考的语数外三科，后一个“3”为高中生自由选考科目。新一轮高考改革赋予了高中生更多选择权，但由于生涯规划教育工作存在不同程度的滞后或开展不完善现象，导致部分高中生缺乏学业生涯规划、职业生涯规划、人生规划能力，家长与教师也未能提供足够多的建议与支持，从而使得高中生生涯规划能力成为新一轮高考中的短板。继而一大批良莠不齐的生涯规划公司应运而生，而一些微信平台为了博取眼球和吸流量也推出了若干生涯规划（含高考志愿填报）的“免费午餐”或“有偿服务”。这些缺乏规范的市场行为或非市场行为，在相当程度上或误导了考生，或歪曲了事实，或造成了考生及家长的经济损失。

    对此，教育部门、网信部门、公安部门等职能部门要注意联动，加强对自媒体的运营监管，确保自媒体各类稿件的真实性与可信度。相关高校应该对涉及自身招生录取的不实信息及时辟谣或纠正，避免不可靠消息误导考生和家长。教育部门、市场监管部门要加强对生涯规划指导特别是高考志愿填报领域的市场行为监管，确保相关市场行为在合法、规范的框架下实施。

    另外，教育部门不妨主动牵头，联合社会机构、公益组织，大力加强高中生生涯规划教育，切实提升高中学校与教师的高中生生涯规划指导能力，确保高中生既有高考选考选择权又有选择能力与规划能力。同时，国家层面应该多鼓励专业性力量开展相关研究，为高中生生涯规划（含高考志愿填报）工作提供更多支撑。鼓励并扶持有资质、高水平的独立第三方机构提供高中生生涯规划指导服务。
                  ''',
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
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          width: MediaQuery.of(context).size.width /2 -20,
                          child: Text(
                            '中国域名根服务器准备上线 网络管理当家做主',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          width: MediaQuery.of(context).size.width /2 -20,
                          child: Text(
                            '中国域名根服务器准备上线 网络管理当家做主',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          width: MediaQuery.of(context).size.width /2 -20,
                          child: Text('中国域名根服务器准备上线 网络管理当家做主',
                          maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            ),
                        )
                      ],
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
              )
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