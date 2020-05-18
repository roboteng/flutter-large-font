import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_sandbox/textClasses.dart';


class TextSizePage extends StatefulWidget {
  @override
  _TextSizePageState createState() => _TextSizePageState();
}

class _TextSizePageState extends State<TextSizePage> {
  SizeHolder size = SizeHolder(min: 11.0, max:60.0, offset:0.0);
  final text1 = lorem(words:2,paragraphs: 1);
  final text2 = lorem(paragraphs: 1, words: 10);
  final text3 = lorem(paragraphs: 2);
  final text4 = lorem(paragraphs: 1, words:1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Reset'),
          onPressed: (() {
            setState(() {
              size = SizeHolder(min: 11.0, max:60.0, offset:0.0);
            });
          }),
        ),
        VariableCard(
          title: 'Minimum Text Size',
          min: 4,
          max: 11,
          value: size.min,
          onChange: (value) {
            setState(() {
              size.min = value;
            });
          },
        ),
        VariableCard(
          title: 'Maximum Text Size',
          min: 48,
          max: 108,
          value: size.max,
          onChange: (value) {
            setState(() {
              size.max = value;
            });
          },
        ),
        VariableCard(
          title: 'Font Increase',
          min: -2.0,
          max: 7.0,
          value: size.offset,
          onChange: (value) {
            setState(() {
              size.offset = value;
            });
          },
        ),
        DisplayText(
          text: 'Display',
          size: size,
        ),
        Title1Text(
          text: 'Title 1',
          size: this.size,
        ),
        Title2Text(
          text: 'Title 2',
          size: this.size,
        ),
        Title3Text(
          text: 'Title 3',
          size: this.size,
        ),
        ButtonText(
          text: 'Button',
          size: this.size,
        ),
        BodyText(
          text: 'Body',
          size: this.size,
        ),
        EyebrowText(
          text: 'Eyebrow',
          size: this.size,
        ),
        Caption1Text(
          text: 'Caption 1',
          size: this.size,
        ),
        Caption2Text(
          text: 'Caption 2',
            size: this.size,
        ),
        SizedBox(
          height: 64.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              DisplayText(
                text: text1,
                size: this.size,
              ),
              Title2Text(
                text: text2,
                size: size,
              ),
              BodyText(
                text: text3,
                size: size,
              ),
              Center(
                child: RaisedButton(
                  child: ButtonText(
                    text: text4,
                    size: size,
                  ),
                  autofocus: true,
                  onPressed: (){
                    print('pressed');
                  },
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
