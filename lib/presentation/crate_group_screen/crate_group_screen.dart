import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../crate_group_screen/widgets/listlineeightysix_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CrateGroupScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft9(context)),
                title: AppbarSubtitle(
                    text: "Crate Group", margin: getMargin(left: 14)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(14.00),
                      width: getHorizontalSize(21.00),
                      svgPath: ImageConstant.imgCheckmarkGray900,
                      margin:
                          getMargin(left: 21, top: 14, right: 21, bottom: 12),
                      onTap: () => onTapCheckmark(context))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      CustomSearchView(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: barsSearchBarsController,
                          hintText: "Search Member",
                          margin: getMargin(top: 19),
                          prefix: Container(
                              margin: getMargin(
                                  left: 8, top: 10, right: 12, bottom: 10),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(36.00)),
                          suffix: Padding(
                              padding: EdgeInsets.only(
                                  right: getHorizontalSize(15.00)),
                              child: IconButton(
                                  onPressed: () {
                                    barsSearchBarsController.clear;
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(36.00))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(1.00));
                              },
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return ListlineeightysixItemWidget();
                              }))
                    ])),
        ));
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }

  onTapCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupNameAndProfilePictureScreen);
  }
}
