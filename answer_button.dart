import 'package:flutter/material.dart';

class AnserButton extends StatelessWidget {
  const AnserButton({super.key, required this.question, required this.onTap});

  final String question;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      child: Text(
        question,
        textAlign: TextAlign.center,
      ),
    );
  }
}
