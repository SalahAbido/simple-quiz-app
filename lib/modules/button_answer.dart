import 'package:flutter/material.dart';

class ButtonAnswer extends StatefulWidget {
  const ButtonAnswer({
    Key? key, required this.answer, required this.onPress, 
  }) : super(key: key);
  final String answer ;
  final Function() onPress;

  @override
  State<ButtonAnswer> createState() => _ButtonAnswerState();
}

class _ButtonAnswerState extends State<ButtonAnswer> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        alignment: Alignment.center,
        width: double.infinity,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.teal
        ),
         child:  Text(widget.answer,
         style: const TextStyle(
          color: Colors.white,
          fontSize: 25.0
         ),)),
    );
  }
}