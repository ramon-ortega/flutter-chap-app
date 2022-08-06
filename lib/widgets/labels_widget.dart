import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    Key? key,
    required this.ruta,
    required this.text,
    required this.buttonText,
  }) : super(key: key);

  final String ruta;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, ruta);
          },
        ),
      ],
    );
  }
}
