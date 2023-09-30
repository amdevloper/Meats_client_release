import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';


class ExpandablelistquestioncounterItemWidget extends StatefulWidget {
  const ExpandablelistquestioncounterItemWidget({super.key, this.arguments});
  final dynamic arguments;

  @override
  State<ExpandablelistquestioncounterItemWidget> createState() => _ExpandablelistquestioncounterItemWidgetState();
}

class _ExpandablelistquestioncounterItemWidgetState extends State<ExpandablelistquestioncounterItemWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        bottom: 6,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 2,
                  bottom: 2,
                ),
                child: Text(
                 widget.arguments['question'],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
            ],
          ),
          trailing: CustomImageView(
            svgPath: ImageConstant.imgArrowdownGray900,
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            margin: getMargin(
              left: size.width / 4,
            ),
          ),
          children: [
            Padding(
              padding: getPadding(
                top: 12,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      335.00,
                    ),
                    child: Text(
                      widget.arguments['answer'],
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular14Gray900,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {},
        ),
      ),
    );
  }
}
