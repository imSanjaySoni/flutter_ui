import 'package:flutter/material.dart';
import '../theame.dart';


class PhotoWidgit extends StatelessWidget {
  const PhotoWidgit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("My photos", style: subtitles),
        ),
        
        SizedBox(height: 8.0,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              photo('assets/images/one.jpg',context),
              photo('assets/images/two.jpg',context),
              photo('assets/images/three.jpg',context),
              photo('assets/images/four.jpg',context),
              photo('assets/images/five.jpg',context),
              photo('assets/images/two.jpg',context),
              photo('assets/images/three.jpg',context),
            ],
          ),
        )
      ],
    );
  }
}

Widget photo(src,context){
  return Padding(
    padding: const EdgeInsets.only(left:8.0, right: 8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
       
        width: MediaQuery.of(context).size.width * 0.3,
        child: Image.asset(src,fit: BoxFit.cover,),
      ),
    ),
  );
  
}