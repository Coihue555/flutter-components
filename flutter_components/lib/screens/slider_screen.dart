import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider(
            min: 50,
            max: 900,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
            ? (value){
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

/*           Checkbox(
            value: _sliderEnabled,
            onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),
          
          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ), */

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {_sliderEnabled = value ?? true;})
          ),

          

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://cdn.pixabay.com/photo/2016/04/15/04/39/redpanda-1330305_960_720.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      )
    );
  }
}