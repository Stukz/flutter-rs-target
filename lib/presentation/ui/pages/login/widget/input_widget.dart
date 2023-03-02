import 'package:flutter/material.dart';

// input widget class that extends stateless widget and takes a label and a value for the input
class InputWidget extends StatelessWidget {
  final String label;
  final String value;
  final String? hintText;
  final bool? isSensitive;

  // constructor
  const InputWidget({
    Key? key,
    required this.label,
    required this.value,
    this.hintText,
    this.isSensitive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: value,
          obscureText: isSensitive ?? false,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
