import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNMode = FocusNode();

    final outLineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
        hintText: 'Ingresa tu texto',
        enabledBorder: outLineInputBorder,
        focusedBorder: outLineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
          },
        ));
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          onTapOutside: (event) {
            focusNMode.unfocus();
          },
          focusNode: focusNMode,
          controller: textController,
          decoration: inputDecoration,
          onFieldSubmitted: (value) {
            textController.clear();
            focusNMode.requestFocus();
          },
          onChanged: (value) {},
        ));
  }
}
