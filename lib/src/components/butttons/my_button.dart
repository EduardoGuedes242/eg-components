import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyButton extends StatelessWidget {
  final String titulo;
  final String icone;
  final void Function() funcao;
  
  const MyButton({
    required this.titulo,
    required this.icone,
    required this.funcao,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcao(),
      child: Container(
        height: 48,
        width: 327,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFF5538EE),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/$icone'),
            SizedBox(width: 8),
            Text(
              titulo,
              style: TextStyle(
                color: Color(0XFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
