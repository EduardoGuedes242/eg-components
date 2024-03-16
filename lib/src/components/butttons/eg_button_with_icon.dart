
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class egButtonWithIcon extends StatelessWidget {
  final String title;
  final String pathIcon;
  final void Function() function;

  const egButtonWithIcon({
    super.key,
    required this.title,
    required this.pathIcon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: 48,
        width: 227,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFF6B4EFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(pathIcon),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
