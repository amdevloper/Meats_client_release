import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgLocationGray900,
          height: getSize(
            24.00,
          ),
          width: getSize(
            24.00,
          ),
          margin: getMargin(
            top: 8,
            bottom: 9,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hussar al Tavolo ",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular16Gray900,
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  "Oakley Avenue, Hammond, IN",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 24,
          width: 24,
          margin: getMargin(
            bottom: 17,
          ),
          variant: IconButtonVariant.FillTeal300,
          shape: IconButtonShape.CircleBorder12,
          child: CustomImageView(
            svgPath: ImageConstant.imgCheckmarkWhiteA700,
          ),
        ),
      ],
    );
  }
}
