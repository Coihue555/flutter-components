import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            Slider(
              min: 100,
              max: 900,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value){
                _sliderValue = value;
                setState(() {});
              }
            ),
      
            Image(
              image: const NetworkImage('https://cdn.pixabay.com/photo/2016/04/15/04/39/redpanda-1330305_960_720.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),

            const SizedBox(height: 100)
          ],
        ),
      )
    );
  }
}