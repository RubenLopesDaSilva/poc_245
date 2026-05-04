import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text,
    this.fontSize, {
    this.upper = false,
    this.bold = false,
    this.justify = false,
    this.center = false,
    this.color,
    super.key,
  });

  final String text;
  final double fontSize;
  final bool upper;
  final bool bold;
  final Color? color;
  final bool justify;
  final bool center;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Text(
      upper ? text.toUpperCase() : text,
      style: GoogleFonts.inter(
        color: color ?? colors.scrim,
        fontSize: fontSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.w500,
      ),
      textAlign: center
          ? TextAlign.center
          : justify
          ? TextAlign.justify
          : null,
    );
  }
}

class StyledGradientText extends StatelessWidget {
  const StyledGradientText(
    this.text,
    this.fontSize, {
    required this.gradient,
    this.upper = false,
    this.bold = false,
    super.key,
  });

  final String text;
  final double fontSize;
  final Gradient gradient;
  final bool upper;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        upper ? text.toUpperCase() : text,
        style: GoogleFonts.inter(
          color: colors.scrim,
          fontSize: fontSize,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
