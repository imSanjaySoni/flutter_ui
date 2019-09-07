import 'package:flutter/material.dart';
import '../hextoint.dart';
import '../theame.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Feed", style: headline,),
        ),

          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text("Sed ut amnet dolor", style:TextStyle(color: HexColor('#888888'), fontSize: 14.0, fontWeight: FontWeight.w300),),
          ),

          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              box('photos', 24, true, context),
              box('articles', 48, false, context),
              box('followers', '22k', false,context),

            ],
          ),

          SizedBox(
            height: 14.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              option('CHAT', true),
              option('FEATURED', false),
              option('POPULER', false),
              option('FOLLOWERS', false),

            ],
          )
      ],

    );
  }
}



Widget box(title,count,isActive,context){
  return Container(
    width: 110.0,
    height: 110.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: isActive ? primary: third
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('$count', style: headline,),
        SizedBox(height: 8.0,),
        Text('$title')
      ],

    ),
  );
}


Widget option(title,isActive){
  return Row(
    children: <Widget>[

      Container(
        height: 40,
        decoration: isActive?BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: primary.withOpacity(0.3)
        ):null,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$title', style: TextStyle(color: isActive? primary :HexColor("888888"))),
          ),
        ),
      )
    ],
  );
}