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
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/img2.jpg', width: 100, height: 100,),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      child: Text(
                        'BARDI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.copy_all_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text('heart'),
                            Text('Scenario')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.switch_left_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text('heart'),
                            Text('Scenario')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.people,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text('heart'),
                            Text('Scenario')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.power_input,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text('heart'),
                            Text('Scenario')
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 5,
                    child: Container(
                      child: Text(
                        'BARDI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.money,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text('8.6')
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            'BARDI Smart Light Bulb Lamp ohlam LED WIFI'),
                        Text('RGBWW 12W 12 Watt Home IOT')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '(354) | 540 Sale | ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 20,
                        ),
                        Text(
                          'Broklyn',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Variant'),
                    Row(
                      children: [
                        Text('size: '),
                        Text('XS')
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('XS'),
                        ),
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('S'),
                        ),
                       ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('M'),
                        ),
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('L'),
                        ),
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('XL'),
                        ),
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('XXL'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Color: '),
                        Text('Red')
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('Red'),
                        ),
                       ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('Black'),
                        ),
                         ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('Green'),
                        ),
                         ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('White'),
                        ),
                         ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                          child: Text('Blue'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.message_rounded,
                    color: Colors.blue,
                  ),
                  Container(
                    child: Text('Add to Shopping Cart'),
                  )
                ],
              )
            ],
          ),
        ),
appBar: AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
      Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 20,
      ),
      Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 156, 151, 151),
            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.blue, // Specify the color of the bottom line
                                  width: 1.0, // Specify the desired thickness of the bottom line
                                ),
                                top:BorderSide(
                                  color: Colors.blue, // Specify the color of the bottom line
                                  width: 1.0, // Specify the desired thickness of the bottom line
                                ),
                                left:BorderSide(
                                  color: Colors.blue, // Specify the color of the bottom line
                                  width: 1.0, // Specify the desired thickness of the bottom line
                                ),
                                right:BorderSide(
                                  color: Colors.blue, // Specify the color of the bottom line
                                  width: 1.0, // Specify the desired thickness of the bottom line
                                ),)
                                ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
                Text('Search Product', 
                style: TextStyle(color: Colors.grey),),
              ],
            )
            
          )
          
        ]
      ),
      Row(children: [
        Icon(
          Icons.store,
          color: Colors.grey,
          size: 20,
        ),
        Icon(
          Icons.notifications,
          color: Colors.grey,
          size:20,
        )
      ],)
      ],)
    )
  ),
);
}

}

