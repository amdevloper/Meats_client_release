import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../widgets/custom_image_view.dart';

class Grid1ItemWidget extends StatefulWidget {
   Grid1ItemWidget({super.key, this.onTapImgImagePlaceholder, this.listOfImage});
  VoidCallback? onTapImgImagePlaceholder;
  String? listOfImage;

  @override
  State<Grid1ItemWidget> createState() => _Grid1ItemWidgetState();
}

class _Grid1ItemWidgetState extends State<Grid1ItemWidget> {

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        widget.onTapImgImagePlaceholder!();
      },
      child: Container(
          // padding: const EdgeInsets.only(left: 15,top: 12),
          height: getVerticalSize( 109.00),
          width: getHorizontalSize( 109.00),
        decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
          child: Image.network(widget.listOfImage!),));


    //   return Align(
    //     alignment: Alignment.center,
    //     child: CustomImageView(
    //       imagePath: Image.network(widget.listItemArray!["image"])),
    //       height: getSize(
    //         109.00,
    //       ),
    //       width: getSize(
    //         109.00,
    //       ),
    //       radius: BorderRadius.circular(
    //         getHorizontalSize(
    //           16.00,
    //         ),
    //       ),
    //       onTap: () {
    //         widget.onTapImgImagePlaceholder!();
    //       },
    //     ),
    //   ),
    // );
  }
}
