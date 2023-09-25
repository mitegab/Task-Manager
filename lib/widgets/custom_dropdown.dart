import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String currentValue = 'Board #1';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(5.0),
        dropdownColor: Colors.white,
        value: currentValue,
        items: <String>['Board #1', 'Board #2', 'Board #3', 'Board #4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            currentValue = newValue!;
          });
        },
      ),
    );
  }
}
