import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'MFK', 'Stalker'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
      ),
      body: ListView(
        children: [
          
          //Como funciona?
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_outlined),
            )
            ).toList()
          
          ],
        )
    );
  }
}