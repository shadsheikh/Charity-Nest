import 'package:flutter/material.dart';

//-------Colors-----------


const Color LightPurpule = Color(0xffF4F6FE);
const Color DarkPurpule = Color(0xff692CAB);
const Color MediumPurpule = Color(0x33692CAB);
const Color BackgroundColor = Color(0xffF4F6FE);
const Color UnselectedColor = Color(0xff8A8A8C);
const Color TextColor = Color(0xff666363);



///242, 18, 11
const Color Primary = Color(0xffF2120B);
///168, 14, 11
const Color Secondary = Color(0xffA80E0B);
///228, 35, 31
const Color Quaternary = Color(0xffe4231f);
///rgb 209 22 51
const Color Ternary = Color(0xffd11633);
///rgb 68 53 91
const Color Violet = Color(0xff44355B);
///rgb 49 38 62
const Color Dark_Purple = Color(0xff00263e);
///rgb 34 30 34
const Color Raisin_Black = Color(0xff221E22);
///79,79,79
const Color Davys_Grey = Color(0xff4F4F4F);
///132, 132, 132
const Color Grey = Color(0xff848484);
///239, 255, 255
const Color Azure = Color(0xffEFFFFF);
///243, 247, 254
const Color Alice_Blue = Color(0xffF3F7FE);
///240, 243, 244
const Color Cultured = Color(0xffF0F3F4);
///226, 229, 228
const Color Platinum = Color(0xffE2E5E4);
///105, 185, 255
const Color Dodger_Blue = Color(0xff69B9FF);
///41, 229, 113
const Color Melachite = Color(0xff29E571);
///rgb 0 136 255
const Color Blue = Color(0xFF0088ff);
///rgb 57 138 247
const Color Light_Blue = Color(0xFF398af7);
///240, 243, 244
const Color Unprogressed = Color(0xFFf0f3f4);
///226, 229, 228
const Color Unseleted = Color(0xFFe2e5e4);
/// 90, 113, 132
const Color Gray = Color(0xFF5a6F84);
///132, 132, 132

//-------Gradient-----------

const LinearGradient Red_Gradient_Rev = LinearGradient(
  colors: [
    Color(0xFFD11633),
    Color(0xFFEF3531),
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

const LinearGradient Red_Gradient = LinearGradient(
  colors: [
    Color(0xFFD11633),
    Color(0xFFEF3531),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Blue_Gradient_3 = LinearGradient(
  colors: [
    Color(0xFF0088FF),
    Color(0xFF69B9FF),
    Color(0xFFf3f7fe),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Blue_Gradient_2 = LinearGradient(
  colors: [
    Color(0xFF0088FF),
    Color(0xFF69b9ff),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Green_Blue_Gradient = LinearGradient(
  colors: [
    Color(0xFF2AE571),
    Color(0xFF0088FF),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Red_Blue_Gradient = LinearGradient(
  colors: [
    Color(0xFFE4231F),
    Color(0xFF0088FF),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Green_Gradient = LinearGradient(
  colors: [
    Color(0xFF2AE571),
    Color(0xFF65FFA0),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Grey_Gradient = LinearGradient(
  colors: [
    Color(0xFFFFFFFF),
    Color(0xFFf1f3f4),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient Grey_Gradient_Rev = LinearGradient(
  colors: [
    Color(0xFFf1f3f4),
    Color(0xFFFFFFFF),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

//-------Shadow-----------

const List<BoxShadow> Blue_Low_Shadow = [
  BoxShadow(
    color: Color(0x540088FF),
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
];

const List<BoxShadow> Blue_High_Shadow = [
  BoxShadow(
    color: Color(0x3D0088FF),
    blurRadius: 15,
    offset: Offset(0, 9),
  ),
];

const List<BoxShadow> PurpulShadow = [
  BoxShadow(
    color: Color(0x3D692CAB),
    blurRadius: 15,
    offset: Offset(0, 9),
  ),
];

const List<BoxShadow> Green_Low_Shadow = [
  BoxShadow(
    color: Color(0x542ae571),
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
];

const List<BoxShadow> Green_High_Shadow = [
  BoxShadow(
    color: Color(0x3D2ae571),
    blurRadius: 15,
    offset: Offset(0, 9),
  ),
];

const List<BoxShadow> Green_High_Shadow_Rev = [
  BoxShadow(
    color: Color(0x3D2ae571),
    blurRadius: 15,
    offset: Offset(0, -9),
  ),
];

const List<BoxShadow> Red_Low_Shadow = [
  BoxShadow(
    color: Color(0x54e4231f),
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
];

const List<BoxShadow> Red_High_Shadow = [
  BoxShadow(
    color: Color(0x3De4231f),
    blurRadius: 15,
    offset: Offset(0, 9),
  ),
];

const List<BoxShadow> Red_High_Shadow_Rev = [
  BoxShadow(
    color: Color(0x3De4231f),
    blurRadius: 15,
    offset: Offset(0, -9),
  ),
];

const List<BoxShadow> Low_Shadow = [
  BoxShadow(
    color: Color(0x29000000),
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
];

const List<BoxShadow> Medium_Shadow = [
  BoxShadow(
    color: Color(0x63221e22),
    blurRadius: 6,
    offset: Offset(0, 3),
  ),
];

const List<BoxShadow> Medium_Shadow_inner = [
  BoxShadow(
    color: Unseleted,
    blurRadius: 12,
    spreadRadius: -12,
  ),
];

const List<BoxShadow> High_Shadow = [
  BoxShadow(
    color: Color(0x3D44355b),
    blurRadius: 15,
    offset: Offset(0, 9),
  ),
];

final List<BoxShadow> Violet_Low_Shadow = [
  BoxShadow(
    color: Violet.withOpacity(0.24),
    blurRadius: 15,
    offset: Offset(0, 4),
  ),
];

const TextStyle W16Sb = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const TextStyle DP16R = TextStyle(
  color: DarkPurpule,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle W16R = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle V34L = TextStyle(
  color: Violet,
  fontSize: 34,
  fontWeight: FontWeight.w300,
);

const TextStyle V34R = TextStyle(
  color: Violet,
  fontSize: 34,
  fontWeight: FontWeight.w400,
);

const TextStyle V34Sb = TextStyle(
  color: Violet,
  fontSize: 34,
  fontWeight: FontWeight.w600,
);

const TextStyle W28Sb = TextStyle(
  color: Colors.white,
  fontSize: 28,
  fontWeight: FontWeight.w600,
);

const TextStyle V16L = TextStyle(
  color: Violet,
  fontSize: 16,
  fontWeight: FontWeight.w300,
);

const TextStyle V40Sb = TextStyle(
  color: Violet,
  fontSize: 40,
  fontWeight: FontWeight.w600,
);

const TextStyle V12R = TextStyle(
  color: Violet,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const TextStyle V28R = TextStyle(
  color: Violet,
  fontSize: 27,
  fontWeight: FontWeight.w400,
);

const TextStyle V40R = TextStyle(
  color: Violet,
  fontSize: 40,
  fontWeight: FontWeight.w400,
);

const TextStyle LB16R = TextStyle(
  color: Light_Blue,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle V16R = TextStyle(
  color: Violet,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle V12L = TextStyle(
  color: Violet,
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

const TextStyle V22R = TextStyle(
  color: Violet,
  fontSize: 22,
  fontWeight: FontWeight.w400,
);

const TextStyle B16Sb = TextStyle(
  color: Blue,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const TextStyle B23R = TextStyle(
  color: Blue,
  fontSize: 23,
  fontWeight: FontWeight.w400,
);

const TextStyle V14R = TextStyle(
  color: Violet,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const TextStyle V16B = TextStyle(
  color: Violet,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const TextStyle V14L = TextStyle(
  color: Violet,
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

const TextStyle V16Sb = TextStyle(
  color: Violet,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const TextStyle V50L = TextStyle(
  color: Violet,
  fontSize: 50,
  fontWeight: FontWeight.w300,
);

const TextStyle R14L = TextStyle(
  color: Primary,
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

const TextStyle W12L = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

const TextStyle W18R = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const TextStyle W12R = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const TextStyle V60Sb = TextStyle(
  color: Violet,
  fontSize: 60,
  fontWeight: FontWeight.w600,
);

const TextStyle G14L = TextStyle(
  color: Gray,
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

const TextStyle V20R = TextStyle(
  color: Violet,
  fontSize: 20,
  fontWeight: FontWeight.w400,
);

const TextStyle B34Sb = TextStyle(
  color: Blue,
  fontSize: 34,
  fontWeight: FontWeight.w600,
);

const TextStyle B16R = TextStyle(
  color: Blue,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle B20Sb = TextStyle(
  color: Blue,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const TextStyle V26R = TextStyle(
  color: Violet,
  fontSize: 26,
  fontWeight: FontWeight.w400,
);

const TextStyle B18R = TextStyle(
  color: Blue,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const TextStyle V20Sb = TextStyle(
  color: Violet,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const TextStyle V18Sb = TextStyle(
  color: Violet,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const TextStyle B18Sb = TextStyle(
  color: Blue,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const TextStyle DG14L = TextStyle(
  color: Davys_Grey,
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

const TextStyle Q14B = TextStyle(
  color: Quaternary,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

const TextStyle V14Sb = TextStyle(
  color: Violet,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

const TextStyle T12R = TextStyle(
  color: Ternary,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const TextStyle Q16R = TextStyle(
  color: Quaternary,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);


const TextStyle Q18Sb = TextStyle(
  color: Quaternary,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
const TextStyle Q16B = TextStyle(
  color: Quaternary,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const TextStyle Q18B = TextStyle(
  color: Quaternary,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const TextStyle V12Sb = TextStyle(
  color: Violet,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

const TextStyle RB16R = TextStyle(
  color: Raisin_Black,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const TextStyle B14R = TextStyle(
  color: Blue,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const TextStyle DG14R = TextStyle(
  color: Davys_Grey,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const TextStyle G10R = TextStyle(
  color: Grey,
  fontSize: 10,
  fontWeight: FontWeight.w400,
);

const TextStyle TC8R = TextStyle(
  color: TextColor,
  fontSize: 8,
  fontWeight: FontWeight.w400,
);

const TextStyle TC12B = TextStyle(
  color: TextColor,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

const TextStyle TC12R = TextStyle(
  color: TextColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);


const TextStyle TC18R = TextStyle(
  color: TextColor,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const TextStyle DP16B = TextStyle(
  color: DarkPurpule,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const TextStyle TC18B = TextStyle(
  color: TextColor,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const TextStyle TC14B = TextStyle(
  color: TextColor,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

const TextStyle TC14R = TextStyle(
  color: TextColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const TextStyle DP24B = TextStyle(
  color: DarkPurpule,
  fontSize: 24,
  fontWeight: FontWeight.w600,
);


