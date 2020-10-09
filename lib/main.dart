import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCheckBox(),
  ));
}

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCheckBoxState();
  }
}

class MyCheckBoxState extends State<MyCheckBox> {
  var _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Container(
        child: Column(
          children: [
//            Row(
//              children: [
//                Checkbox(
//                  value: _isCheck,
//                  activeColor: Colors.deepOrange,
//                  onChanged: (bool value) {
//                    setState(() {
//                      _isCheck = value;
//                    });
//                  },
//                ),
//                Text("Check It")
//              ],
//            )
          CheckboxListTile(
            title: Text("CheckBox"),
            subtitle: Text("Check it CheckBox"),
            secondary: Icon(Icons.home),
            activeColor: Colors.deepOrange,
            value: _isCheck,
            onChanged: (bool value){
              setState(() {
                _isCheck = value;
              });
            },

          )

          ],
        ),
      ),
    );
  }
}
