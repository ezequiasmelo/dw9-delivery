import 'package:dw9_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrderField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;

  const OrderField({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
    required this.hintText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    const defaultBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                title,
                style: context.textStyles.textRegular.copyWith(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              border: defaultBorder,
              enabledBorder: defaultBorder,
              focusedBorder: defaultBorder,
            ),
            inputFormatters: inputFormatters,
          ),
        ],
      ),
    );
  }
}
