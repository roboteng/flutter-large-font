import 'dart:math';

import 'package:flutter/material.dart';

// min and max are asymptotes, so they should be set lower and higher than expected values (expect values might be 10, 60)
// offset is the value given by the system font size (expected value might be 0 or 1.2)
// original is the font specified by the design system (expected value might be 12 or 28)
// returned value is the new font size. For positive offset, this will be a bigger font
double scale(min, max, offset, original) {
  return sigmoid(min, max, invSig(min, max, original) + offset);
}

double sigmoid(min, max, x) {
  return ((max - min) / (exp(-x) + 1) + min);
}

double invSig(min, max, y) {
  return -log(-(max - min) / (min - y) - 1);
}

class SizeHolder{
  double min;
  double max;
  double offset;

  SizeHolder({this.min, this.max, this.offset});
}

class ScaledText extends StatelessWidget {
  final String text;
  final double min;
  final double max;
  final double size;
  final double offset;
  final FontWeight bold;
  final double tracking;
  final double spacing;

  ScaledText(
      {this.text,
        this.min,
        this.max,
        this.size,
        this.offset,
        this.bold,
        this.tracking,
        this.spacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textScaleFactor: 1.0,
      style: TextStyle(
        fontWeight: this.bold,
        letterSpacing: this.tracking,
        fontSize: scale(this.min, this.max, this.offset, this.size),
        height: this.spacing / this.size,
      ),
    );
  }
}

class VariableCard extends StatelessWidget {
  final String title;
  final Function onChange;
  final double min;
  final double max;
  final double value;

  VariableCard({this.title, this.onChange, this.min, this.max, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Column(
            children: <Widget>[
              Text(this.title),
              Slider(
                min: this.min,
                max: this.max,
                value: this.value,
                onChanged: this.onChange,
              ),
              Text(this.value.toStringAsFixed(0)),
            ],
          )),
    );
  }
}

class DisplayText extends StatelessWidget {
  final String text;
  final SizeHolder size;

  DisplayText({
    this.text,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaledText(
        text: this.text,
        min: this.size.min,
        max: this.size.max,
        offset: this.size.offset,
        size: 48.0,
        bold: FontWeight.w700,
        tracking: -1,
        spacing: 60.0,
      ),
    );
  }
}
class Title1Text extends StatelessWidget {
  final String text;
  final SizeHolder size;

  Title1Text({
    this.text,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 28.0,
      bold: FontWeight.w700,
      tracking: -1,
      spacing: 36.0,
    );
  }
}
class Title2Text extends StatelessWidget {
  final String text;
  final SizeHolder size;

  Title2Text({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 20.0,
      bold: FontWeight.w700,
      tracking: 0.0,
      spacing: 28.0,
    );
  }
}
class Title3Text extends StatelessWidget {
  final String text;
  final SizeHolder size;

  Title3Text({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 18.0,
      bold: FontWeight.w500,
      tracking: 0.0,
      spacing: 26.0,
    );
  }
}
class ButtonText extends StatelessWidget {
  final String text;
  final SizeHolder size;

  ButtonText({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 16.0,
      bold: FontWeight.w500,
      tracking: 0.0,
      spacing: 16.0,
    );
  }
}
class BodyText extends StatelessWidget {
  final String text;
  final SizeHolder size;

  BodyText({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 16.0,
      bold: FontWeight.w400,
      tracking: 0.0,
      spacing: 24.0,
    );
  }
}
class EyebrowText extends StatelessWidget {
  final String text;
  final SizeHolder size;

  EyebrowText({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 12.0,
      bold: FontWeight.w700,
      tracking: 2.0,
      spacing: 18.0,
    );
  }
}
class Caption1Text extends StatelessWidget {
  final String text;
  final SizeHolder size;

  Caption1Text({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 14.0,
      bold: FontWeight.w500,
      tracking: 0.0,
      spacing: 21.0,
    );
  }
}
class Caption2Text extends StatelessWidget {
  final String text;
  final SizeHolder size;

  Caption2Text({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledText(
      text: this.text,
      min: this.size.min,
      max: this.size.max,
      offset: this.size.offset,
      size: 12.0,
      bold: FontWeight.w500,
      tracking: 0.0,
      spacing: 18.0,
    );
  }
}