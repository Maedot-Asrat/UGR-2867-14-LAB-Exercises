
import 'package:flutter/material.dart';

void main() {
  runApp(quiz1());
  // runApp(StatelessWidget1(title: "Scaffold Widget"));
}

class quiz1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: [
            Card(
              child: Column(children: [
                Container(
                  color: Colors.lightGreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                          Column(
                            children: [
                              Text('Completed'),
                              Text('Order Completed 24 July 2024')
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id'),
                    Text('#76598876')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order date'),
                    Text('20 july 2024')
                  ],
                )
              ]),),
            Card(
              child: Column(children: [
                Text('Purchased Items')
              ],),
            ),
            Card()
          ]),
        ),
      
                
               
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
          Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          Text('Order Details')
          
          ],)
        )
      ),
    );
  }
  
  }
  

