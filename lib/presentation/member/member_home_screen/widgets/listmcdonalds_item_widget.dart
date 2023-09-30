import 'package:flutter/material.dart';

import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListmcdonaldsItemWidget extends StatelessWidget {
  ListmcdonaldsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "McDonald’s",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium16Gray900,
          ),
          Spacer(),
          Text(
            "Baskin Robbins",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium16Gray900,
          ),
          Padding(
            padding: getPadding(
              left: 44,
            ),
            child: Text(
              "Domi",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium16Gray900,
            ),
          ),
        ],
      ),
    );
  }
}
