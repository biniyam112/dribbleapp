import 'package:dribble_question_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key key,
    @required this.value,
    @required this.name,
  }) : super(key: key);
  final String value, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (SizeConfig.screenWidth / 3) - 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: darkFocusColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 32,
        ),
        child: Column(
          children: [
            Text(
              '$value',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                  ),
            ),
            Text(
              '$name',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
