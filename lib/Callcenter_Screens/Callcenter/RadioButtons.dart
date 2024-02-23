import 'package:flutter/material.dart';
import 'package:salesapp/utils/size_config_hilal.dart';

class RadioButtonClass extends StatefulWidget {
  const RadioButtonClass({Key? key}) : super(key: key);

  @override
  State<RadioButtonClass> createState() => _RadioButtonClassState();
}

class _RadioButtonClassState extends State<RadioButtonClass> {
  String radioButtonItem = 'A Class';

  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          SizedBox(height: context.blockSizeVertical*2,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children:[
            Radio(activeColor: Color(0xff687892),
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'A Class';
                  id = 1;
                });
              },
            ),
            Text(
              'A Class',
              style: new TextStyle(fontSize: context.blockSizeHorizontal*0.9),
            ),

            Radio(
              activeColor: Color(0xff687892),
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'FOC';
                  id = 2;
                });
              },
            ),
            Text(
              'FOC',
              style: new TextStyle(
                fontSize: context.blockSizeHorizontal*0.9,
              ),
            ),

            Radio(
              activeColor: Color(0xff687892),
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Branch';
                  id = 3;
                });
              },
            ),
            Text(
              'Branch',
              style: new TextStyle(fontSize: context.blockSizeHorizontal*0.9),
            ),

          ],
      ),
        ),
]
    ));
  }
}
