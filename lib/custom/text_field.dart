// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   // final TextEditingController controller;
//   // final FormFieldValidator<String>? validator;
//   final Widget? prefixicon;
//   final Widget? suffixIcon;
//   final TextInputType? keyboardtype;
//   final bool? obscureText;
//   final bool? readonly;
//   const CustomTextField({
//     super.key,
//     required this.hintText,
//     // required this.controller,
//     // this.validator,
//     this.suffixIcon,
//     this.obscureText,
//     this.keyboardtype,
//     this.readonly,
//     this.prefixicon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(

//         // controller: controller,
//         // validator: validator,
//         autofocus: true,
//         keyboardType: keyboardtype,
//         obscureText: obscureText ?? false,
//         decoration: InputDecoration(
//           filled: true,
//           // fillColor: Color(0xffFAFAFA),
//           suffixIcon: suffixIcon,
//           suffixStyle: TextStyle(color: Colors.purple),
//           prefixIcon: prefixicon,
//           hintText: hintText,
//           hoverColor: Colors.purple.shade100,
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//           hintStyle: TextStyle(
//               fontFamily: 'plusjakarta',
//               color: Theme.of(context).hintColor.withOpacity(0.3),
//               fontSize: 14,
//               fontWeight: FontWeight.w400),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(20)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(
//                 color: Colors.purple,
//               ),
//               borderRadius: BorderRadius.circular(20)),
//         )).px(20).py(12);

//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final Widget? defaultPrefixIcon;
  final Widget? alternatePrefixIcon;
  final Widget? defaultSuffixIcon;
  final Widget? alternateSuffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? readOnly;
  final VoidCallback? ontap;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.defaultPrefixIcon,
    this.alternatePrefixIcon,
    this.defaultSuffixIcon,
    this.alternateSuffixIcon,
    this.obscureText,
    this.keyboardType,
    this.ontap,
    this.readOnly,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;
  late FocusNode _focusNode;
  bool _showAlternatePrefixIcon = false;
  bool _showAlternateSuffixIcon = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onTap() {
    _focusNode.requestFocus();
    setState(() {
      _showAlternatePrefixIcon = !_showAlternatePrefixIcon;
      _showAlternateSuffixIcon = !_showAlternateSuffixIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ?? false,
      readOnly: widget.readOnly ?? false,
      // onTap: _onTap,
      onTap: widget.ontap,
      onFieldSubmitted: (_) {
        _focusNode.unfocus();
      },
      decoration: InputDecoration(
        filled: true,
        // fillColor: Color(0xffFAFAFA),
        fillColor: _isFocused ? Colors.purple.shade50 : Colors.grey[50],
        prefixIcon: _showAlternatePrefixIcon
            ? widget.alternatePrefixIcon
            : widget.defaultPrefixIcon,
        suffixIcon: _showAlternateSuffixIcon
            ? widget.alternateSuffixIcon
            : widget.defaultSuffixIcon,
        suffixStyle: TextStyle(color: Colors.purple),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: _isFocused ? Colors.purple : Colors.grey.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.purple,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        hintStyle: TextStyle(
          color: _isFocused ? Colors.black : Colors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ).py(12);
  }
}
