import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class SwiperPage extends StatelessWidget {
  final List<String> imageList = [
    'images/1.png',
    'images/2.png',
    'images/3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        loop: false,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index){
          // if (index == imageList.length -1) {
          //   return GestureDetector(
          //       onTap: (){
          //         print('object');
          //       },
          //       child: Image.asset(
          //         imageList[index],
          //         fit: BoxFit.cover,
          //       ),
          //   );
          // }
          // return Image.asset(
          //   imageList[index],
          //   fit: BoxFit.cover,
          // );
          return Stack(
            children: <Widget>[
              Image.asset(
                imageList[index],
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              index == imageList.length -1 ? Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.only(bottom: 40.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.blue
                    )
                  ),
                  child: FlatButton(
                    onPressed: (){
                      print('点击了button');
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                    '立即体验',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  )
                ),
              ): SizedBox()
            ],
          );
        },
      ),
    );
  }
}