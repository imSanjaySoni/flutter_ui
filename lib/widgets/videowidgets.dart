import 'package:flutter/material.dart';
import '../theame.dart';


class VideoWidgit extends StatelessWidget {
  const VideoWidgit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("My videos", style: subtitles),
        ),
        SizedBox(height: 8.0,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              video('assets/images/nine.jpg',context),
              video('assets/images/five.jpg',context),
              video('assets/images/six.jpg',context),
              video('assets/images/seven.jpg',context),
              video('assets/images/eight.jpg',context),
            ],
          ),
        )
      ],
    );
  }
}

Widget video(src,context){
  return Padding(
    padding: const EdgeInsets.only(left:8.0, right: 8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width *0.7,
        height: 200.0,
        child: Image.asset(src,fit: BoxFit.cover,),
      ),
    ),
  );
  
}