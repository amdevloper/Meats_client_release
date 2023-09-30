import 'package:flutter/material.dart';

import '../../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListmcdonaldsOneItemWidget extends StatelessWidget {
  ListmcdonaldsOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Lax Stock & Bagel",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium16Gray900,
          ),
          Text(
            "Alpine Meadow",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium16Gray900,
          ),
          Text(
            "Tower 23 Hotel",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium16Gray900,
          ),
        ],
      ),
    );
  }
}
