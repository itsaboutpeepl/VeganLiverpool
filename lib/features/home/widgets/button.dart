import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.width,
  }) : super(key: key);
  final void Function() onPressed;
  final String text;
  final String icon;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * .425,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.all(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/$icon.svg',
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: AutoSizeText(
                text,
                style: TextStyle(
                  letterSpacing: 0.3,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                maxLines: 1,
                presetFontSizes: const [
                  20,
                  17,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
