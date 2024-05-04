import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String placeholderText;
  final IconData? icon;
  final bool passwordVisibiltyIcon;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  bool isobscure;
  CustomTextField(
      {this.textEditingController,
      super.key,
      required this.placeholderText,
      this.icon,
      required this.passwordVisibiltyIcon,
      required this.isobscure,
      this.onChange,
      this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passwordVisiabilty = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      obscureText: widget.isobscure,
      validator: widget.validator,
      onChanged: widget.onChange,
      decoration: InputDecoration(
          enabled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
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
          suffixIcon: widget.passwordVisibiltyIcon
              ? IconButton(
                  onPressed: () {
                    passwordVisiabilty = !passwordVisiabilty;
                    setState(() => widget.isobscure = !widget.isobscure);
                  },
                  icon: Icon(togglePasswordVisiabiltyIcon(widget.isobscure)))
              : null,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 10),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
    );
  }
}

IconData togglePasswordVisiabiltyIcon(bool passwordVisiabilty) {
  if (passwordVisiabilty) {
    return Icons.visibility_outlined;
  } else {
    return Icons.visibility_off_outlined;
  }
}
