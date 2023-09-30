import 'package:flutter/material.dart';

import '../../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Expire in: 8 hr 10 min",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoMedium10Gray90001,
        ),
        Text(
          "Expire in: 8 hr 10 min",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoMedium10Gray90001,
        ),
        Text(
          "Expire in: 8 hr 10 min",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoMedium10Gray90001,
        ),
      ],
    );
  }
}
