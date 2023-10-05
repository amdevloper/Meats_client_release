import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../add_item_screen/widgets/listtext_item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddItemScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    onTap: () => onTapArrowleft22(context)),
                title: AppbarSubtitle(
                    text: "Add Item", margin: getMargin(left: 14))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(top: 6, bottom: 6),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(374.00),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 19),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgVideocameraBlueGray300,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCameraBlueGray300,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        margin: getMargin(left: 12))
                                  ]))),
                          // CustomDropDown(
                          //     width: 335,
                          //     focusNode: FocusNode(),
                          //     icon: Container(
                          //         margin: getMargin(left: 30, right: 12),
                          //         child: CustomImageView(
                          //             svgPath:
                          //                 ImageConstant.imgArrowdownBlack900)),
                          //     hintText: "Item Category",
                          //     margin: getMargin(top: 20),
                          //     items: dropdownItemList,
                          //     onChanged: (value) {}),
                         CustomTextFormField(
                             width: 335,
                             focusNode: FocusNode(),
                             controller: controlsTextOneController,
                             hintText: "Item Category",
                             margin: getMargin(top: 20)),

                         CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Item Name",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "About Item",
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingAll17,
                              textInputAction: TextInputAction.done,
                              maxLines: 10),
                          Padding(
                              padding: getPadding(left: 20, top: 20, right: 19),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20.00));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListtextItemWidget();
                                  })),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Add Item",
                              margin: getMargin(top: 40, bottom: 5))
                        ]))),
        ));
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }
}
