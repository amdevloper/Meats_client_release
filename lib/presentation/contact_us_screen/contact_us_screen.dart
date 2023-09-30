import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ContactUsScreen extends StatelessWidget {
  TextEditingController yourNameTextController = TextEditingController();

  TextEditingController emailAddressTextOneController = TextEditingController();

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  TextEditingController messageTextThreeController = TextEditingController();
  TextEditingController subjectTextThreeController = TextEditingController();

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
                    onTap: () => onTapArrowleft49(context)),
                title: AppbarSubtitle1(
                    text: "Contact us", margin: getMargin(left: 14))),
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
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: yourNameTextController,
                              hintText: "Your Name",
                              margin: getMargin(top: 19)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: emailAddressTextOneController,
                              hintText: "Email Address",
                              margin: getMargin(top: 20),
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: subjectTextThreeController,
                              hintText: "Subject",
                              margin: getMargin(top: 20),
                              textInputType: TextInputType.emailAddress),

                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: messageTextThreeController,
                              hintText: "Message",
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingAll17,
                              textInputAction: TextInputAction.done,
                              maxLines: 6),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Send",
                              margin: getMargin(top: 30, bottom: 5),
                          onTap: () {
                                contactUsFunction(context);
                          },)
                        ]))),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700,
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgRectangle,
            //               height: getVerticalSize(5.00),
            //               width: getHorizontalSize(48.00),
            //               radius:
            //                   BorderRadius.circular(getHorizontalSize(2.00)),
            //               margin: getMargin(bottom: 3))
           // ]
    ));
  }


  Future<dynamic> contactUsFunction(BuildContext context) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    // var studentsmap = itemList.map((e){
    //   return {
    //     "category": e.name,
    //     "name": e.name,
    //     "about": e.about,
    //     "originalPrice": e.originalPrice,
    //     "discountPrice": e.discountPrice,
    //     "image": e.image,
    //   };
    // }).toList();


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/add/contact-us'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },

      body: jsonEncode(<dynamic,dynamic>{
        "name" : yourNameTextController.value.text,
        "email" : emailAddressTextOneController.value.text,
        "subject" : "Unable to pay",
        "message" : messageTextThreeController.value.text
      }),
    );

     if (response.statusCode == 200) {
        Navigator.pop(context);
     } else {
       throw Exception('Failed to create restaurant.');
     }
  }


  onTapArrowleft49(BuildContext context) {
    Navigator.pop(context);
  }
}
