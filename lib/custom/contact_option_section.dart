import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactOptionSection extends StatelessWidget {
  const ContactOptionSection(
      {super.key,
      required this.label,
      this.images,
      required this.hintText,
      this.preffixIcon,
      required this.selected,
      this.suffixIcon});

  final String label;
  final Widget? images;
  final String hintText;
  final Widget? preffixIcon;
  final bool selected;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: AnimatedContainer(
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? size.height / 8
            : size.height / 5,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 201, 195, 195),
            // color: selected
            //     ? Theme.of(context).indicatorColor.withOpacity(0.5)
            //     : Theme.of(context).disabledColor.withOpacity(0.3),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        duration: Duration(milliseconds: 200),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(147, 231, 219, 240),
            child: images,
          ),
          title: Text(
            label,
            style: TextStyle(
              fontFamily: 'plusjakarta',
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          subtitle: Text(
            hintText,
            style: TextStyle(
              fontFamily: 'plusjakarta',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: preffixIcon,
        ).py(9),
      ),
    );
    ;
  }
}
