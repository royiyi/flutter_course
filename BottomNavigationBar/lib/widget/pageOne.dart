import 'package:flutter/material.dart';
class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
              ),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
              ),
            ],

          ),
        ],
      ),
    );
  }
}