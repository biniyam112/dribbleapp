import 'package:flutter/material.dart';

class InpageOptions extends StatelessWidget {
  const InpageOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'Badges',
      'Statistics',
      'Details',
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          options.length,
          (index) => Text(
            options[index],
            style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
