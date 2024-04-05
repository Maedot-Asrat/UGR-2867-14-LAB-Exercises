
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Image.asset('assets/img.jpg', width: 50, height: 50,),),

                        
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Robert Steven', style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions_car,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  border: Border(
                                    bottom: BorderSide(
                                      
                                      color: Colors.blue, // Specify the color of the bottom line
                                      width: 1.0, // Specify the desired thickness of the bottom line
                                    ),
                                    top:BorderSide(
                                      color: Colors.blue, // Specify the color of the bottom line
                                      width: 1.0, // Specify the desired thickness of the bottom line
                                    ),
                                    left: BorderSide(
                                      color: Colors.blue, // Specify the color of the bottom line
                                      width: 1.0, // Specify the desired thickness of the bottom line
                                    ),
                                    right: BorderSide(
                                      color: Colors.blue, // Specify the color of the bottom line
                                      width: 1.0, // Specify the desired thickness of the bottom line
                                    ),
                                  ),
                                ),
                                  child: Text('B 2455 UJD | 7098970', 
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Text('Log Out', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  color:Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Online | Battery: 90%'),
                    ],
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      
                      child: Column(
                        children: [
                          Icon(
                            Icons.flag,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Map'),
                          Text('All Devices')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Live Location'),
                         
                        ],
                      ),),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('History Location'),
                          
                        ],
                      ),
                    )
                    ]
                  ),
                  
                  
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.map_rounded,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Set Geofence'),
                        
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.medical_information,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Detail info'),
                         
                        ],
                      ),),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Edit Device'),
                          
                        ],
                      ),
                    )
                    ]
                  ),
                 
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Change'),
                          Text('Center Number')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.key,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Text('Disabled Menu'),
                         
                        ],
                      ),),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.punch_clock,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Set GPS'),
                          Text('Time Interval')
                          
                        ],
                      ),
                    )
                    ]
                  ),
                
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.blue,
                            size: 30,
                          ),
                         
                          Text('Restart Device')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.battery_alert,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Power Saving'),
                          Text('Mode')

                         
                        ],
                      ),),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.power,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Normal Mode'),
                          
                        ],
                      ),
                    )
                    ]
                  ),
                  
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.power_rounded,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Shutdown'),
                          Text('Device')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.note,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Device'),
                          Text('Command History')
                         
                        ],
                      ),),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text('Contact Us'),
                          
                        ],
                      ),
                    )
                    ]
                  ),
              ]
            )
          )
          
        ),
      
                
               
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
          Icon(
            Icons.question_mark_rounded,
            color: Colors.white,
            size: 20,
          ),
          Row(
            children: [
              Text('iJ',
              style: TextStyle(
                color: Colors.orange,
              ),),
              Text('Tracker'),],
          ),
          Row(children: [
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 20,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size:20,
            )
          ],)
          ],)
        )
      ),
    );
  }
  
  }
  

