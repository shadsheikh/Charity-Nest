import 'dart:ui';
import 'package:app/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SolidButton extends StatelessWidget {
  SolidButton({
    required this.text,
    this.color,
    this.gradient,
    required this.onPress,
    required this.shadow,
    this.padding,
    this.fontSize,
  }) : assert(color != null || gradient != null);

  final String text;
  final Color? color;
  final Gradient? gradient;
  final List<BoxShadow> shadow;
  final void Function() onPress;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: shadow,
            color: color,
            gradient: gradient,
            borderRadius: BorderRadius.circular(100)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: onPress,
            child: Container(
              alignment: Alignment.center,
              padding:
              padding ?? EdgeInsets.symmetric(vertical: 22, horizontal: 16),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize ?? 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  BorderButton({
    required this.text,
    required this.color,
    required this.onPress,
    required this.shadow,
    this.padding,
    this.fontSize,
  });

  final String text;
  final Color color;
  final List<BoxShadow> shadow;
  final void Function() onPress;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2),
          boxShadow: shadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(100)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onPress,
          child: Container(
            alignment: Alignment.center,
            padding:
            padding ?? EdgeInsets.symmetric(vertical: 22, horizontal: 16),
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: fontSize ?? 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconTextBorderButton extends StatelessWidget {
  IconTextBorderButton(
      {required this.text,
        this.padding,
        required this.buttonColor,
        required this.onPress,
        this.shadow,
        this.icon,
        required this.color,
        this.image})
      : assert(icon != null || image != null);

  final String text;
  final Color buttonColor;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? shadow;
  final void Function() onPress;
  final IconData? icon;
  final Color color;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2),
          boxShadow: shadow,
          color: buttonColor,
          borderRadius: BorderRadius.circular(100)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onPress,
          child: Container(
            alignment: Alignment.center,
            padding:
            padding ?? EdgeInsets.symmetric(vertical: 17, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                if (icon != null)
                  Icon(
                    icon,
                    color: color,
                  ),
                if (image != null) Image(image: image!, width: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  IconTextButton(
      {required this.text,
        this.padding,
        required this.buttonColor,
        required this.onPress,
        required this.shadow,
        this.icon,
        required this.color,
        this.image})
      : assert(icon != null || image != null);

  final String text;
  final Color buttonColor;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow> shadow;
  final void Function() onPress;
  final IconData? icon;
  final Color color;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: shadow,
          color: buttonColor,
          borderRadius: BorderRadius.circular(100)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onPress,
          child: Container(
            alignment: Alignment.center,
            padding:
            padding ?? EdgeInsets.symmetric(vertical: 17, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (icon != null)
                  Icon(
                    icon,
                    color: color,
                  ),
                if (image != null) Image(image: image!, width: 24),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  CircleIconButton(
      {required this.buttonColor,
        required this.onPress,
        required this.shadow,
        required this.icon,
        required this.iconColor});

  final Color buttonColor;
  final List<BoxShadow> shadow;
  final void Function() onPress;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: shadow,
            color: buttonColor,
            shape: BoxShape.circle,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: onPress,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Icon(icon, color: iconColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class IconButtonRoundedRactangle extends StatelessWidget {
  IconButtonRoundedRactangle(
      {required this.buttonColor,
        required this.onPress,
        required this.shadow,
        this.icon,
        this.iconColor,
        this.image})
      : assert(icon != null || image != null);

  final Color buttonColor;
  final List<BoxShadow> shadow;
  final void Function() onPress;
  final IconData? icon;
  final Color? iconColor;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: shadow,
            color: buttonColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPress,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: icon != null
                    ? Icon(
                  icon,
                  color: iconColor,
                )
                    : Image(image: image!, width: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextInputWithLeading extends StatelessWidget {
  final String label;
  final Color TextColor;
  final Color labelColor;
  final String Leadinglabel;
  final Color LeadingTextColor;
  final Color LeadingColor;

  TextInputWithLeading(
      {required this.label,
        required this.TextColor,
        required this.labelColor,
        required this.Leadinglabel,
        required this.LeadingTextColor,
        required this.LeadingColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          color: LeadingColor,
          alignment: Alignment.center,
          child: Text(
            Leadinglabel,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: LeadingTextColor,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            style: TextStyle(
              color: TextColor,
            ),
            decoration: InputDecoration(
              fillColor: Azure,
              labelStyle: TextStyle(
                color: labelColor,
              ),
              labelText: label,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextInput extends StatelessWidget {
  final bool disabled;
  final String label;
  final Color TextColor;
  final Color labelColor;
  final IconData? icon;
  final TextEditingController? controller;

  CustomTextInput({
    required this.label,
    required this.TextColor,
    required this.labelColor,
    this.icon,
    this.disabled = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !disabled,
      style: TextStyle(
        color: TextColor,
      ),
      decoration: InputDecoration(
        suffixIcon: icon != null ? Icon(icon) : null,
        fillColor: disabled ? Unseleted : LightPurpule,
        labelStyle: TextStyle(
          color: labelColor,
        ),
        labelText: label,
        filled: true,
      ),
      controller: controller,
    );
  }
}

class TextInputWithIcon extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color iconColor;
  final IconData icon;

  TextInputWithIcon(
      {required this.label,
        required this.textColor,
        required this.iconColor,
        required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: textColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        suffixIcon: Icon(icon, color: iconColor),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        hintText: label,
        fillColor: Azure,
        filled: true,
      ),
    );
  }
}

class ContainerText extends StatelessWidget {
  ContainerText(
      {required this.title, required this.image, required this.shadow});

  final String title;
  final String image;
  final List<BoxShadow> shadow;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: shadow,
          ),
          width: 71,
          height: 71,
          child: Image(
            image: AssetImage(image),
          ),
        ),
        SizedBox(width: 8),
        Text(title, style: V12R),
      ],
    );
  }
}

class RadioText<T> extends StatelessWidget {
  RadioText(
      {required this.value,
        required this.groupvalue,
        required this.onChange,
        required this.text});

  final T value;
  final void Function(T) onChange;
  final T? groupvalue;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Radio<T>(
            value: value,
            groupValue: groupvalue,
            onChanged: (T? currentValue) {
              if (currentValue != null) onChange(currentValue);
            },
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => onChange(value),
              child: Text(text, style: V16R),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckboxText extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function(bool?) onChange;
  final bool? checkboxValue;

  CheckboxText(
      {required this.text1,
        required this.text2,
        required this.onChange,
        required this.checkboxValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checkboxValue,
          activeColor: Melachite,
          onChanged: (currentValue) {
            if (currentValue != null) onChange(currentValue);
          },
        ),
        SizedBox(width: 12),
        Row(
          children: [
            Text(text1, style: V12R),
            Text(text2, style: V12L),
          ],
        ),
      ],
    );
  }
}

class CustumProgressIndicator extends StatelessWidget {
  const CustumProgressIndicator({
    required this.shadow,
    required this.color,
    required this.value,
  });

  final int value;
  final List<BoxShadow> shadow;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadow,
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Text(
              '%$value',
              style: TextStyle(
                color: color,
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.width / 5,
              child: CircularProgressIndicator(
                strokeWidth: 7,
                backgroundColor: Unprogressed,
                color: color,
                value: value / 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextAndBox extends StatelessWidget {
  final String heading;
  final String value;
  TextAndBox({required this.heading, required this.value});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(heading, style: V16Sb),
        SizedBox(height: 10),
        Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: Low_Shadow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                value,
                style: V28R,
              ),
            ))
      ],
    );
  }
}

class DotText extends StatelessWidget {
  final String text1;
  final String text2;
  final List<BoxShadow> shadow;
  final Color color;

  DotText(
      {required this.text1,
        required this.text2,
        required this.color,
        required this.shadow});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: shadow,
          ),
          width: MediaQuery.of(context).size.width / 12,
          height: MediaQuery.of(context).size.width / 12,
        ),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1, style: V14R),
            Text(text2, style: V14R),
          ],
        )
      ],
    );
  }
}

class InfoTabBar extends StatelessWidget {
  final Color color;
  final List<BoxShadow> shadow;
  final String label;
  final void Function() onTap;

  InfoTabBar(
      {required this.color,
        required this.shadow,
        required this.label,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: InkWell(onTap: onTap, child: Text(label, style: V22R)),
        ),
        SizedBox(height: 10),
        DefaultTabController(
          length: 4,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: Blue_Low_Shadow,
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                    height: 130,
                    width: 192,
                    child: Image(
                      image: AssetImage(
                          'lib/presentation/Assets/Assets_After_Login/background_path.png'),
                    )),
                Column(
                  children: [
                    TabBar(
                      labelStyle: B16Sb,
                      unselectedLabelStyle: B16Sb,
                      unselectedLabelColor: Blue.withOpacity(0.5),
                      labelColor: Blue,
                      tabs: [
                        Tab(text: 'Günlük'),
                        Tab(text: 'Aylık'),
                        Tab(
                          child: FittedBox(child: Text('Bu Çeyrek')),
                        ),
                        Tab(text: 'Yıllık'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          TabBarContant(shadow: shadow, color: color),
                          TabBarContant(shadow: shadow, color: color),
                          TabBarContant(shadow: shadow, color: color),
                          TabBarContant(shadow: shadow, color: color),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InfoTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 37,
      ),
      child: Row(
        children: [
          CustumProgressIndicator(
              shadow: Blue_High_Shadow, color: Blue, value: 75),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DotText(
                    text1: 'Yenilenenler',
                    text2: '%75   |   0',
                    color: Blue,
                    shadow: Blue_High_Shadow),
                SizedBox(height: 14),
                DotText(
                    text1: 'Yenilenecekler',
                    text2: '%75   |   0',
                    color: Violet,
                    shadow: High_Shadow),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarContant extends StatelessWidget {
  const TabBarContant({
    Key? key,
    required this.shadow,
    required this.color,
  }) : super(key: key);

  final List<BoxShadow> shadow;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 37, right: 28, bottom: 23),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('0'),
              Container(color: Ternary, width: 67, height: 5),
              Text('2021')
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('1750'),
              Container(
                  decoration: BoxDecoration(
                    gradient: Blue_Gradient_2,
                  ),
                  width: 67,
                  height: 42),
              Text('2020')
            ],
          ),
          Spacer(),
          CustumProgressIndicator(shadow: shadow, color: color, value: 75),
        ],
      ),
    );
  }
}

class RoundedRectangeButton extends StatelessWidget {
  final IconData icon;

  RoundedRectangeButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Icon(icon, color: Violet),
        ));
  }
}

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;
  final double? width;
  final double? height;

  AnimatedToggle(
      {required this.values,
        required this.onToggleCallback,
        this.backgroundColor = const Color(0xFFe7e7e8),
        this.buttonColor = const Color(0xFFFFFFFF),
        this.textColor = const Color(0xFF000000),
        this.width,
        this.height});
  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  bool initialPosition = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.width * 0.13,
      height: widget.height ?? 37,
      // margin: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child: Neumorphic(
              style: NeumorphicStyle(
                  intensity: 0.70,
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.1)),
                  depth: -10,
                  lightSource: LightSource.top,
                  color: Colors.grey),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                width: widget.width ?? MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.13,
                height: widget.height ?? 37,
                decoration: ShapeDecoration(
                  shadows: Medium_Shadow_inner,
                  color: widget.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    widget.values.length,
                        (index) => Text(
                      widget.values[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment:
            initialPosition ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: widget.width != null
                  ? (widget.width! / 1.75)
                  : (MediaQuery.of(context).size.width / 2) - 20,
              height: widget.height ?? 37,
              decoration: ShapeDecoration(
                color: widget.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.1),
                ),
              ),
              child: Text(
                initialPosition ? widget.values[0] : widget.values[1],
                style: TextStyle(
                  fontSize: 16,
                  color: widget.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}

class FourText extends StatelessWidget {
  FourText(
      {required this.text1,
        required this.text2,
        required this.text3,
        required this.text4,
        required this.style});

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1, style: style),
        Spacer(),
        Text(text2, style: style),
        Spacer(),
        Text(text3, style: style),
        Spacer(),
        Text(text4, style: style),
      ],
    );
  }
}

class RenewedInfo extends StatelessWidget {
  const RenewedInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: 2,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: Blue_Low_Shadow,
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            width: MediaQuery.of(context).size.width,
            height: 190,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Violet,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text('BURCU YILDIRIM', style: V16Sb),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  ),
                  SizedBox(height: 25),
                  DualTextRow(text1: 'Yeni Poliçe No', text2: '42454641'),
                  Divider(),
                  DualTextRow(text1: 'Eski Poliçe No', text2: '30361354'),
                  Divider(),
                  DualTextRow(text1: 'Vade Tarihi', text2: '02.11.2021'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DualTextRow extends StatelessWidget {
  const DualTextRow(
      {required this.text1, required this.text2, this.style1, this.style2});

  final String text1;
  final String text2;
  final TextStyle? style1;
  final TextStyle? style2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1, style: style1 ?? V16Sb),
        Spacer(),
        Text(text2, style: style2 ?? V16L),
      ],
    );
  }
}

class DualTextColumn extends StatelessWidget {
  const DualTextColumn(
      {required this.text1, required this.text2, this.style1, this.style2});

  final String text1;
  final String text2;
  final TextStyle? style1;
  final TextStyle? style2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text1, style: style1 ?? V16Sb),
        SizedBox(height: 5),
        Text(text2, style: style2 ?? V16L),
      ],
    );
  }
}

class CustomDualText extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  CustomDualText(
      {required this.text1,
        required this.text2,
        required this.color,
        required this.fontWeight,
        required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        Spacer(),
        Text(
          text2,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}

class TextAndIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  TextAndIcon({required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Container(
            height: 54,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: Grey_Gradient,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                SizedBox(width: 15),
                FittedBox(child: Text(title)),
                Spacer(),
                Icon(icon),
                SizedBox(width: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BranchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            boxShadow: Red_Low_Shadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
          width: 260,
          height: 212,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  height: 106,
                  width: 110,
                  child: Image(
                    image:
                    AssetImage('lib/presentation/Assets/Assets_Destek/background.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 78,
                  width: 78,
                  child: Image(
                    image:
                    AssetImage('lib/presentation/Assets/Assets_Destek/backgroundUp.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17),
                    Text('Adiyaman Zey Şube', style: V16B),
                    SizedBox(height: 20),
                    Text('Turgut Reis Zey C. No:7 A/A', style: G14L),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: CustomDualText(
                        text1: 'Telefon',
                        text2: 'Dahili',
                        color: Gray,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: CustomDualText(
                        text1: '0 850 433 0850',
                        text2: '2215',
                        color: Gray,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 70, bottom: 17),
                      child: BorderButton(
                          text: 'Haritada Gör',
                          color: Blue,
                          onPress: () {},
                          shadow: Blue_Low_Shadow),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TeklifListContent extends StatelessWidget {
  final String title;
  final String image;
  final void Function() onTap;

  TeklifListContent(
      {required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: Low_Shadow,
          ),
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Row(
            children: [
              SizedBox(width: 15),
              Image.asset('lib/presentation/Assets/Assets_Teklif_AI/$image', width: 48),
              SizedBox(width: 15),
              Text(title, style: V16R),
              Spacer(),
              Text('Teklif Al', style: B16R),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward, color: Blue),
              SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}

class PolicelerimListContent extends StatelessWidget {
  final String title;
  final String image;
  final void Function() onTap;

  PolicelerimListContent(
      {required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: Grey_Gradient,
          ),
          width: MediaQuery.of(context).size.width,
          height: 54,
          child: Row(
            children: [
              SizedBox(width: 15),
              Image.asset('lib/presentation/Assets/Assets_Hesabim/$image', width: 30),
              SizedBox(width: 15),
              Text(title, style: RB16R),
              Spacer(),
              Icon(Icons.arrow_forward, color: Violet),
              SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    this.label,
    this.floatingLabel,
    this.disabled = false,
    this.enabled = true,
    this.color,
    this.labelColor,
    this.fontSize,
    this.labelFontWeight,
    this.placeholder,
    this.backgroundColor,
    this.obscureText = false,
    this.displayBorder = false,
    this.customBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.leading,
    this.trailing,
    this.contentPadding,
    this.keyboardType,
    this.readOnly = false,
    this.initialValue,
    this.textColor,
  });

  final String? label;
  final String? floatingLabel;
  final bool disabled; // changes background to grey
  final bool enabled; // Just disables click
  final Color? color;
  final Color? labelColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? labelFontWeight;
  final String? placeholder;
  final Color? backgroundColor;
  final bool obscureText;
  final bool displayBorder;
  final Border? customBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (label != null)
          Text(
            label!,
            style: TextStyle(
              color: labelColor ?? Theme.of(context).primaryColorDark,
              fontWeight: labelFontWeight ?? FontWeight.w500,
              fontSize: fontSize ?? 16,
            ),
          ),
        if (label != null) const SizedBox(height: 10),
        Container(
          decoration: displayBorder
              ? BoxDecoration(
            border: customBorder ??
                Border.all(
                  width: 1,
                  color: const Color(0xFFe4e7ec),
                ),
            color: Azure,
          )
              : const BoxDecoration(
            color: Color(0xfff1f3f5),
          ),
          child: Row(
            children: <Widget>[
              if (leading != null) leading!,
              Expanded(
                child: TextFormField(
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  readOnly: readOnly,
                  initialValue: initialValue,
                  style: TextStyle(
                    color: textColor ?? Raisin_Black,
                  ),
                  decoration: InputDecoration(
                    labelText: floatingLabel,
                    hintText: placeholder,
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      color: labelColor,
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: prefixIcon,
                    suffixIcon: suffixIcon,
                    contentPadding: contentPadding ??
                        EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: floatingLabel == null ? 0 : 8,
                        ),
                  ),
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ],
    );
  }
}

class TextInBox extends StatelessWidget {
  final String text;
  final Color color;
  final List<BoxShadow> shadow;
  final Color textColor;

  TextInBox(
      {required this.text,
        required this.color,
        required this.shadow,
        required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
        boxShadow: shadow,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 26, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class VehicleAccessories extends StatefulWidget {
  final String title;
  final String text;

  VehicleAccessories({required this.title, required this.text});

  @override
  _VehicleAccessoriesState createState() => _VehicleAccessoriesState();
}

class _VehicleAccessoriesState extends State<VehicleAccessories> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              IconTextBorderButton(
                text: widget.title,
                buttonColor: isSelected ? Blue : Colors.white,
                onPress: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                color: isSelected ? Colors.white : Unseleted,
                icon: Icons.check,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: CustomTextInput(
            disabled: !isSelected,
            label: widget.text,
            TextColor: Raisin_Black,
            labelColor: Grey,
          ),
        ),
      ],
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({required this.text, required this.height});

  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: Medium_Shadow,
          color: Colors.white),
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: 18),
          Icon(Icons.info_outline, color: Colors.red),
          SizedBox(width: 15),
          Flexible(child: Text(text)),
          SizedBox(width: 18),
        ],
      ),
    );
  }
}

class ViewOffersItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String installment;
  final String subinstallment;
  final String insurance;
  final void Function() onButtonTap;
  final void Function(bool) onChange;
  final bool switchvalue;
  final Color bordercolor;
  final bool headerVisible;
  final bool isBorder;
  final List<BoxShadow> shadow;

  ViewOffersItem({
    required this.title,
    required this.subtitle,
    required this.installment,
    required this.subinstallment,
    required this.insurance,
    required this.onButtonTap,
    required this.onChange,
    required this.switchvalue,
    required this.bordercolor,
    this.headerVisible = false,
    this.isBorder = false,
    required this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 10),
          margin: EdgeInsets.only(top: 17),
          decoration: BoxDecoration(
            boxShadow: shadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isBorder ? Colors.white : Blue,
              width: isBorder ? 0 : 2,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 17),
              Row(
                children: [
                  Image.asset(
                    'lib/presentation/Assets/Assets_Common/logo.png',
                    width: 115,
                    height: 57,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: V16Sb,
                      ),
                      SizedBox(height: 6),
                      Text(
                        subtitle,
                        style: V14R,
                      ),
                      SizedBox(height: 6),
                      Text(
                        insurance,
                        style: T12R,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        installment,
                        style: Q16R,
                      ),
                      SizedBox(height: 8),
                      Text(
                        subinstallment,
                        style: V16Sb,
                      ),
                    ],
                  ),
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: SolidButton(
                      text: 'SATIN AL',
                      onPress: onButtonTap,
                      shadow: Green_High_Shadow,
                      gradient: Green_Gradient,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'Poliçe Detayı',
                    style: V16L,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Violet,
                  ),
                  Spacer(),
                  Text(
                    'Karşılaştır',
                    style: V12Sb,
                  ),
                  SizedBox(width: 6),
                  CupertinoSwitch(value: switchvalue, onChanged: onChange),
                ],
              )
            ],
          ),
        ),
        if (headerVisible)
          Positioned(
            top: 0,
            left: 16,
            height: 34,
            child: Container(
              decoration: BoxDecoration(
                color: Blue,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: Blue,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: const Center(
                  child: Text(
                    'EN DÜŞÜK FİYAT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class InnerShadowDropdown extends StatelessWidget {
  const InnerShadowDropdown({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          intensity: 0.70,
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          depth: -10,
          lightSource: LightSource.top,
          color: Colors.grey),
      child: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(title),
            Spacer(),
            Icon(Icons.keyboard_arrow_down),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class ThreeStep extends StatelessWidget {
  const ThreeStep(
      {required this.step1, required this.step2, required this.step3});
  final bool step1;
  final bool step2;
  final bool step3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextInBox(
                text: '01',
                textColor: step1 ? Violet : Violet.withOpacity(.5),
                color: Colors.white,
                shadow: Red_Low_Shadow),
            TextInBox(
                text: '02',
                textColor: step2 ? Violet : Violet.withOpacity(.5),
                color: Colors.white,
                shadow: Red_Low_Shadow),
            TextInBox(
                text: '03',
                textColor: step3 ? Violet : Violet.withOpacity(.5),
                color: Colors.white,
                shadow: Red_Low_Shadow),
          ],
        )
      ],
    );
  }
}

class InsuranceInformation extends StatelessWidget {
  const InsuranceInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            boxShadow: Low_Shadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 140,
                  width: 140,
                  child: Image(
                    image:
                    AssetImage('lib/presentation/Assets/Assets_Common/backgroundUp.png'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sigorta Bilgileriniz',
                      style: Q18Sb,
                    ),
                    SizedBox(height: 20),
                    DualTextColumn(
                        text1: 'Adınız Soyadınız', text2: 'Sinan Soylu'),
                    SizedBox(height: 25),
                    DualTextColumn(text1: 'Plaka', text2: '34 DRR 364'),
                    SizedBox(height: 25),
                    DualTextColumn(
                        text1: 'Araç',
                        text2:
                        '2020 / Peugeot / 308\nAllure Sport 1.2 Puretech.'),
                    SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButtonRoundedRactangle(
                            buttonColor: Colors.white,
                            onPress: () {},
                            shadow: Low_Shadow,
                            image: AssetImage(
                                'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Düzenle', style: B18Sb),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InsuranceQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: Blue_Low_Shadow,
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                CustumProgressIndicator(
                    shadow: Blue_High_Shadow, color: Blue, value: 75),
                SizedBox(width: 44),
                Flexible(
                    child: Text('Size en uygun kasko sigortası teklifleri',
                        style: V22R))
              ],
            ),
            Spacer(),
            Text(
                'Sizin için bulduğumuz tüm teklifler hazır. En pahalı ve en ucuz teklif arasında %0 fiyat avantajı bulunuyor',
                style: V14Sb),
            Spacer(),
            DualTextRow(
                text1: 'Teklif Sayısı:',
                text2: '13',
                style1: DG14L,
                style2: Q14B),
            Spacer(),
            DualTextRow(
                text1: 'En Düşük:',
                text2: '1.331,25  TL',
                style1: DG14L,
                style2: Q14B),
            Spacer(),
            DualTextRow(
                text1: 'Fiyat Avantajı:',
                text2: '%23',
                style1: DG14L,
                style2: Q14B),
          ],
        ),
      ),
    );
  }
}

class BigRightTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      height: 132,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: Green_High_Shadow),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 42),
        child: Image(
          image: AssetImage('lib/presentation/Assets/Assets_Common/check.png'),
        ),
      ),
    );
  }
}

class MyPoliciesListView extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final void Function() onTap;

  const MyPoliciesListView(
      {required this.text1,
        required this.text2,
        required this.text3,
        required this.text4,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(right: 15, left: 15, top: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: Grey_Gradient,
          ),
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Column(
            children: [
              DualTextRow(
                  text1: text1, text2: text2, style1: B14R, style2: DG14L),
              SizedBox(height: 6),
              DualTextRow(
                  text1: text3, text2: text4, style1: DG14R, style2: DG14L),
            ],
          ),
        ),
      ),
    );
  }
}



class ItemQuantity extends StatelessWidget {
  final String name;
  final String req;
  final double avl;

  const ItemQuantity({
    Key? key, required this.name,required this.req,required this.avl
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(name,style: TC18R),
            Spacer(),
            Text('Req: $req',style: TC18R),
          ],
        ),
        SizedBox(height: 5),
        LinearPercentIndicator(
          animation: true,
          lineHeight: 20.0,
          animationDuration: 2000,
          percent: avl,
          center: Text("$avl %",style: TC18R),
          barRadius: Radius.circular(15),
          progressColor: avl>0.4 ? Colors.greenAccent : Colors.redAccent,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
