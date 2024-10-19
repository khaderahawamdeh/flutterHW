import 'package:build_flutter/item_list.dart';
import 'package:flutter/material.dart';
import 'Quick_action.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
     return MaterialApp (
      home: MainScreen(),
         );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

@override
Widget build(BuildContext context) { 
        List <Item> items = [
          Item(
          icon: Icons.location_on,
          iconcolor: const Color.fromARGB(255, 154, 105, 227),
          title: 'Address',
          subtitle: 'Ensure your harvesting address',
          ),
          
          Item(
          icon: Icons.lock,
          iconcolor: const Color.fromARGB(255, 230, 115, 153),
          title: 'Privacy',
          subtitle: 'System permission change',
          ),

          Item(
          icon: Icons.layers,
          iconcolor: Colors.amber,
          title: 'General',
          subtitle: 'Basic functional settings',
          ),

          Item(
          icon: Icons.notifications,
          iconcolor: const Color.fromARGB(255, 12, 217, 200),
          title: 'Address',
          subtitle: 'Take over the news in time',
          ),

        ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Center', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
        backgroundColor: Colors.white,
        
        elevation: 0,
      ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 6, 112, 233),
              borderRadius: BorderRadius.circular(16.0)
              ),
        child: Column(
            children: [
              Row(
                children: [
                        ClipOval(
                        child: Image.asset(
                               'assets/images/persongirl.png',
                               height: 70,
                               width: 70,
                               fit: BoxFit.cover, 
                               ),
                        ),
    
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                     Text('khadera hawamdeh ',style:TextStyle (fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold ), ),
                     Text('A trendsetter',style:TextStyle (fontSize: 12, color: Colors.white), ),

                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16.0,),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('846',style:TextStyle (fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold), ),
                       Text('Collect',style:TextStyle (fontSize: 12, color: Color.fromARGB(255, 236, 230, 230)), ),

                      ],),
                    Column(children: [
                       Text('51',style:TextStyle (fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold), ),
                       Text('Attention',style:TextStyle (fontSize: 12, color: Color.fromARGB(255, 236, 230, 230)), ),
                      ],),
                    Column(children: [
                        Text('267',style:TextStyle (fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold), ),
                       Text('Track',style:TextStyle (fontSize: 12, color: Color.fromARGB(255, 236, 230, 230)), ),
                      ],),
                    Column(children: [
                       Text('39',style:TextStyle (fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold), ),
                       Text('Coupons',style:TextStyle (fontSize: 12, color: Color.fromARGB(255, 236, 230, 230)), ),
                      ] ),
                  ],
              ),

             
            ],
          ),
        ),
        
        const SizedBox(height: 24.0),

        const QuickActionsRow(),

        const SizedBox(height: 16.0),
      

        Expanded(
          child: ItemList(items: items),
        
        ),

        
        ],

    ),
        ),

        );
      }
}
        