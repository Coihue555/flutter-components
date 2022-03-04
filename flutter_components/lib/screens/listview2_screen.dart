// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

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
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
              onTap: (){
                final game = options[index];
                print(game);
              },
            ),
        separatorBuilder: (_, __) => const Divider(color: AppTheme.primary),
        
        )
    );
  }
}