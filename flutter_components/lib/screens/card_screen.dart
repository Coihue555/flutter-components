import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget de Tarjetas')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        children: const [
            CustomCardType1(),
            SizedBox(height:10),
            CustomCardType2(name: 'Paisaje de Chile', imageUrl: 'https://cdn.eso.org/images/thumb700x/millour-01-cc.jpg',),
            SizedBox(height:10),
            CustomCardType2(imageUrl: 'https://avivamientochaco.com/web/wp-content/uploads/2018/10/travel-landscape-01-1024x683.jpg',),
            SizedBox(height:10),
            CustomCardType2(imageUrl: 'https://media.sproutsocial.com/uploads/landscape-hero-bg-1.jpg',),
            SizedBox(height:10),
            CustomCardType2(imageUrl: 'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',),
            SizedBox(height:10),
            CustomCardType2(imageUrl: 'https://i0.wp.com/www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg?ssl=1',),
            SizedBox(height:100),
        ],
      )
    );
  }
}

