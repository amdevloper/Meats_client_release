import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class AppDecoration {


  static BoxDecoration get txtOutlineGray3001 => BoxDecoration(
    color: ColorConstant.gray300,
    border: Border.all(
      color: ColorConstant.gray300,
      width: getHorizontalSize(
        1.00,
      ),
    ),
  );

  static BoxDecoration get txtFillGray100 => BoxDecoration(
    color: ColorConstant.gray100,
  );


  static BoxDecoration get txtOutlineGray90001 => BoxDecoration(
    border: Border.all(
      color: ColorConstant.gray90001,
      width: getHorizontalSize(
        1.00,
      ),
    ),
  );

  static BoxDecoration get fillBluegray300 => BoxDecoration(
        color: ColorConstant.blueGray300,
      );
  static BoxDecoration get outlineIndigo900 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.indigo900,
          width: getHorizontalSize(
            1.00,
          ),
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray90014 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillIndigo900 => BoxDecoration(
    color: ColorConstant.indigo900,
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineTeal300 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.teal300,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get gradientGray900ceGray90000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            0.93,
          ),
          colors: [
            ColorConstant.gray900Ce,
            ColorConstant.gray90000,
          ],
        ),
      );
  static BoxDecoration get outlineBluegray300a2 => BoxDecoration(
        color: ColorConstant.gray900A2,
        border: Border.all(
          color: ColorConstant.blueGray300A2,
          width: getHorizontalSize(
            3.00,
          ),
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineTeal3001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.teal300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillIndigo900 => BoxDecoration(
        color: ColorConstant.indigo900,
      );
  static BoxDecoration get outlineRedA70030 => BoxDecoration(
        color: ColorConstant.gray90001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.redA70030,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get outlineBlack90033 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineWhiteA700 => BoxDecoration(
        color: ColorConstant.gray90001,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray90001 => BoxDecoration(
        color: ColorConstant.gray90001,
        border: Border.all(
          color: ColorConstant.gray90001,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        color: ColorConstant.gray300,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtFillTealA400 => BoxDecoration(
        color: ColorConstant.tealA400,
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9002b,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3003 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray900ab => BoxDecoration(
        color: ColorConstant.gray900Ab,
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  static BoxDecoration get fillGray90090 => BoxDecoration(
        color: ColorConstant.gray90090,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get outlineGray9004f => BoxDecoration(
        color: ColorConstant.gray90001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray9004f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray20087 => BoxDecoration(
        color: ColorConstant.gray20087,
      );
  static BoxDecoration get fillWhiteA700a0 => BoxDecoration(
        color: ColorConstant.whiteA700A0,
      );
  static BoxDecoration get txtOutlineGray300 => BoxDecoration(
        color: ColorConstant.gray300,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {








  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );



  static BorderRadius customBorderBL16 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );


  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
  );

  static BorderRadius customBorderBL10 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius customBorderLR20 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius roundedBorder47 = BorderRadius.circular(
    getHorizontalSize(
      47.00,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder58 = BorderRadius.circular(
    getHorizontalSize(
      58.00,
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius circleBorder42 = BorderRadius.circular(
    getHorizontalSize(
      42.00,
    ),
  );

  static BorderRadius roundedBorder62 = BorderRadius.circular(
    getHorizontalSize(
      62.00,
    ),
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius txtCustomBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );



  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );
}
