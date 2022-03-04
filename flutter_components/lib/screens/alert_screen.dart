import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100 )

            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle( color:Colors.red))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            )
           ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100 )

            ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')
              )
            ],
        );
      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          /* style: ElevatedButton.styleFrom(
          primary: Colors.red,
          elevation: 5
        ) */
           child: const Padding(
             padding: EdgeInsets.all( 20),
             child: Text('Mostrar alerta', style: TextStyle( fontSize: 20 ),),
           ),
           //onPressed: ()=>displayDialogAndroid(context)
           onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIOS(context)
          )
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        //forma alternativa de escribir [Cerrar]
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}