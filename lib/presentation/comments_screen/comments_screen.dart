import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../comments_screen/widgets/listellipseseven2_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 8, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  alignment: Alignment.centerLeft,
                                  margin: getMargin(left: 18),
                                  onTap: () {
                                    onTapImgArrowleft(context);
                                  }),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 14),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 19, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse7125x125,
                                            height: getSize(27.00),
                                            width: getSize(27.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(13.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 3, bottom: 4),
                                            child: Text("La Pino’s Pizza",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoBold16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(21.00),
                                            margin:
                                                getMargin(top: 4, bottom: 3)),
                                        Container(
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(1.00),
                                            margin: getMargin(
                                                left: 19, top: 3, bottom: 3),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius: BorderRadius
                                                    .circular(getHorizontalSize(
                                                        10.00)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.gray900,
                                                    width:
                                                        getHorizontalSize(1.00),
                                                    strokeAlign:BorderSide.strokeAlignCenter)))
                                      ])),
                              Container(
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 11),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage200x335,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(335.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA70030x30,
                                            height: getSize(30.00),
                                            width: getSize(30.00),
                                            alignment: Alignment.center)
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 17, top: 14),
                                      child: Text(
                                          "On Saturdays we throwback and twirl 💃🏻",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular12Gray900))),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 10, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 8, bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "50",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: "Likes",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: getPadding(
                                                left: 31, top: 8, bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "12",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: "Comments",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getSize(26.00),
                                            width: getSize(26.00))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 26),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 19, right: 20),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300));
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Listellipseseven2ItemWidget();
                                      })),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 72, top: 19),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 34),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Reply",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium12),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse72,
                                                          height:
                                                              getSize(40.00),
                                                          width: getSize(40.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      20.00)),
                                                          margin: getMargin(
                                                              top: 14))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 31),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Leo Baptists",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Black900),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Text(
                                                              "Great, man ❤️❤️❤️❤️ ",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14Gray600)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 19),
                                                          child: Text("Reply",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium12))
                                                    ]))
                                          ]))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              CustomTextFormField(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controlsTextController,
                                  hintText: "Type your Comment here",
                                  margin: getMargin(top: 29),
                                  shape: TextFormFieldShape.CircleBorder24,
                                  padding: TextFormFieldPadding.PaddingT13,
                                  fontStyle:
                                      TextFormFieldFontStyle.RobotoRegular16,
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 16,
                                          right: 29,
                                          bottom: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgLocation)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(48.00)))
                            ])))),
        ));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
