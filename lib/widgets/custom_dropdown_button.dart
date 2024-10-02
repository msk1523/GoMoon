import 'package:flutter/material.dart';

//reuseable class for the dropdown list is created
class CustomDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButtonClass(
      {required this.values,
      required this.width}); //constructor and 'required' will make them named args

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        width: width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(53, 53, 53, 1.0),
            borderRadius: BorderRadius.circular(10)),
        child: DropdownButton(
          // underline:
          //Container(), // this makes an empty container having nothing in the borders
          value: values.first, //selects the first value as the default value
          items: values.map(
            (e) {
              return DropdownMenuItem(child: Text(e), value: e);
            },
          ).toList(),
          onChanged: (value) {},
          underline:
              Container(), // this makes an empty container having nothing in the borders));
          dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
          style: const TextStyle(color: Colors.white),
        ));
  }
}
