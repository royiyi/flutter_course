import 'package:flutter/material.dart';

class Two extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Container(
            color: Colors.yellow,
            width: 200,
            height: 200,
            ),
            Container(
            color: Colors.brown,
            width: 200,
            height: 200,
            )
       
        ],
      ),
    );
  }
}


