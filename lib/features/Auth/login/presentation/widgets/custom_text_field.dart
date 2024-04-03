import 'package:flutter/material.dart';

IconData togglePasswordVisiabiltyIcon(bool passwordVisiabilty) {
  if (passwordVisiabilty) {
    return Icons.visibility_outlined;
  } else {
    return Icons.visibility_off_outlined;
  }
}

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String placeholderText;
  final IconData icon;
  final bool isPassword;

  const CustomTextField(
      {required this.textEditingController,
      super.key,
      required this.placeholderText,
      required this.icon,
      required this.isPassword});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passwordVisiabilty = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: passwordVisiabilty,
      decoration: InputDecoration(
          enabled: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          filled: true,
          hintText: widget.placeholderText,
          fillColor: const Color(0xff322E3C),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 15),
              Icon(
                widget.icon,
                color: const Color(0xffBAB8B8),
                size: 25,
              ),
              const SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Color(0xff57545F),
                  thickness: 3,
                  width: 30,
                ),
              )
            ],
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() => passwordVisiabilty = !passwordVisiabilty);
                  },
                  icon: Icon(togglePasswordVisiabiltyIcon(passwordVisiabilty)))
              : null,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 10),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
    );
  }
}
