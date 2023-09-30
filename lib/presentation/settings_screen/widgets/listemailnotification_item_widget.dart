import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_switch.dart';

// ignore: must_be_immutable
class ListemailnotificationItemWidget extends StatelessWidget {
  ListemailnotificationItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Email Notification",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium16Gray900,
              ),
              Container(
                width: getHorizontalSize(
                  246.00,
                ),
                margin: getMargin(
                  top: 5,
                ),
                child: Text(
                  "You can receive all notification to your given \nemail address.",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular12,
                ),
              ),
            ],
          ),
        ),
        CustomSwitch(
          margin: getMargin(
            bottom: 29,
          ),
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
