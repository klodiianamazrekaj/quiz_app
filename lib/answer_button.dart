import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 70),
        foregroundColor: const Color.fromARGB(221, 37, 34, 34),
        backgroundColor: const Color.fromARGB(255, 232, 206, 129),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
