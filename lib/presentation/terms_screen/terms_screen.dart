import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import 'package:http/http.dart' as http;

class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft46(context)),
                title: AppbarSubtitle1(
                    text: "Terms & Conditions", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 18),
                          child: FutureBuilder<Map<String, dynamic>>(
    future: termsAndCondititonFunction(),
    builder:(BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return Text(snapshot.data!['tnc']['content'],
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: AppStyle.txtRobotoRegular14Gray900,
        maxLines: 20,);
      }
    }
                          )),
                      // Align(
                      //     alignment: Alignment.center,
                      //     child: Container(
                      //         width: getHorizontalSize(327.00),
                      //         margin: getMargin(top: 11),
                      //         child: Text(
                      //             "This privacy policy (\"Policy\") describes how C&S Moguls in Georgia (\"Company,\" \"we,\" and \"our\") processes, collects, uses and shares personal data when using this App https://www.them.e.a.t.sapp.com (the \"App\"). Please read the following information carefully to understand our practices regarding your personal data and how we will process data.\r\n\r\n ",
                      //             maxLines: null,
                      //             textAlign: TextAlign.left,
                      //             style: AppStyle.txtRobotoRegular14Gray900))),
                      // Padding(
                      //     padding: getPadding(left: 20, top: 21),
                      //     child: Text("What is personal data?",
                      //         overflow: TextOverflow.ellipsis,
                      //         textAlign: TextAlign.left,
                      //         style: AppStyle.txtRobotoMedium16Gray900)),
                      // Align(
                      //     alignment: Alignment.center,
                      //     child: Container(
                      //         width: getHorizontalSize(331.00),
                      //         margin: getMargin(top: 10),
                      //         child: Text(
                      //             "We collect information about you in a range of forms, including personal data. As used in this Policy, “personal data” is as defined in the General Data Protection Regulation, this includes any information which, either alone or in combination with other information we process about you, identifies you as an individual, including, for example, your name, postal address, email address and telephone number.",
                      //             maxLines: null,
                      //             textAlign: TextAlign.left,
                      //             style: AppStyle.txtRobotoRegular14Gray900))),
                      // Padding(
                      //     padding: getPadding(left: 20, top: 21),
                      //     child: Text("Why do we need your personal data?",
                      //         overflow: TextOverflow.ellipsis,
                      //         textAlign: TextAlign.left,
                      //         style: AppStyle.txtRobotoMedium16Gray900)),
                      // Align(
                      //     alignment: Alignment.center,
                      //     child: Container(
                      //         width: getHorizontalSize(332.00),
                      //         margin: getMargin(top: 10, bottom: 5),
                      //         child: Text(
                      //             "We will only process your personal data in accordance with applicable data protection and privacy laws. We need certain personal data in order to provide you with access to the App. If you registered with us, you will have been asked to tick to agree to provide this information in order to access our services, purchase our products, or view our content. This consent provides us with the legal basis we require under applicable law to process your data.",
                      //             maxLines: null,
                      //             textAlign: TextAlign.left,
                      //             style: AppStyle.txtRobotoRegular14Gray900)))
                    ])),
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
            //         ]))
        ));
  }

    Future<Map<String, dynamic>> termsAndCondititonFunction() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
    'GET',
    Uri.parse(
    "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/tnc"),
    )..headers.addAll({
    'Content-Type': 'application/json',
    'Authorization': token!,
    });
    var params = {
    "id": userId,
    };

    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
    }


    onTapArrowleft46(BuildContext context) {
    Navigator.pop(context);
  }
}
