import 'package:app/widgets/photowidgets.dart';
import 'package:app/widgets/topwidgets.dart';
import 'package:app/widgets/videowidgets.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child:TopWidget(),
          ),

          Expanded(
            flex: 1,
            child:PhotoWidgit(),
          ),

          Expanded(
            flex: 1,
            child:VideoWidgit(),
          )
          
        
        ],
      ),
    );
  }
}


