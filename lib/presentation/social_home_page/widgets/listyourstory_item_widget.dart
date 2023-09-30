import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListyourstoryItemWidget extends StatelessWidget {
  ListyourstoryItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            top: 1,
            right: 26,
          ),
          child: Text(
            "Your Story",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium12,
          ),
        ),
      ),
    );
  }
}
