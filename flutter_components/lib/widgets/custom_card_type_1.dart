import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary,),
            title: Text('El titulo'),
            subtitle: Text('Commodo aute ea culpa ea esse pariatur consectetur nulla ullamco. Aute velit esse proident proident in. Minim quis pariatur mollit consectetur reprehenderit. Eiusmod laborum est cillum deserunt qui veniam irure veniam. Reprehenderit reprehenderit ea qui sint. Tempor quis eu quis quis laborum veniam ut. Qui voluptate nisi fugiat in veniam sit eu mollit consectetur pariatur proident qui ipsum exercitation.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right:5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancelar'),
                  ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Ok')
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}