import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['Megaman', 'Metal Gear', 'MFK', 'Stalker'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_outlined),
            ),
        separatorBuilder: (_, __) => const Divider(color: Color.fromARGB(66, 32, 32, 32)),
        
        )
    );
  }
}