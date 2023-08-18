import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../custom/small_loader.dart';

class SmallRoundButton extends StatefulWidget {
  const SmallRoundButton({
    super.key,
    required this.onTap,
    this.loading = false,
    required this.child,
    this.disabled = false,
  });
  final bool loading;
  final VoidCallback onTap;
  final Widget child;
  final bool disabled;

  @override
  State<SmallRoundButton> createState() => _SmallRoundButtonState();
}

class _SmallRoundButtonState extends State<SmallRoundButton> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = true;
        });
      },
      onPanEnd: (_) {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = false;
        });
      },
      onPanCancel: () {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = false;
        });
      },
      onTap: () {
        if (widget.loading || widget.disabled) return;
        widget.onTap();
      },
      child: AnimatedOpacity(
        opacity: pressed ? 0.8 : 1,
        duration: const Duration(milliseconds: 250),
        child: Container(
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            color: Colors.purple.withOpacity(0.1),
            // color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.purple.withOpacity(0.1),

              // color: Theme.of(context).primaryColor
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6.5),
          child: widget.child,
        ),
      ),
    );
  }
}

class RoundButton extends StatefulWidget {
  const RoundButton({
    Key? key,
    required this.height,
    this.width,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.icon,
    required this.title,
    required this.onTap,
    this.margin = 50,
    this.loading = false,
    this.disabled = false,
    this.gradient = false,
  }) : super(key: key);
  final double height;
  final double? width;
  final Color backgroundColor;
  final Color textColor;
  final String? icon;
  final String title;
  final VoidCallback? onTap;
  final double margin;
  final bool loading;
  final bool disabled;
  final bool gradient;

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = true;
        });
      },
      onPanEnd: (_) {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = false;
        });
      },
      onPanCancel: () {
        if (widget.loading || widget.disabled) return;
        setState(() {
          pressed = false;
        });
      },
      onTap: () {
        if (widget.loading || widget.disabled) return;
        widget.onTap!();
      },
      child: AnimatedOpacity(
        opacity: pressed ? 0.4 : 1,
        duration: const Duration(milliseconds: 250),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color: widget.gradient
                ? null
                : widget.disabled
                    ? widget.backgroundColor.withOpacity(0.6)
                    : widget.backgroundColor,
            // gradient: widget.gradient ? backgroundGradient : null,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: widget.backgroundColor.withOpacity(0.1),
                spreadRadius: 1.5,
                blurRadius: 4,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          height: widget.height,
          width: widget.width,
          margin: EdgeInsets.symmetric(horizontal: widget.margin),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null && !widget.loading)
                SvgPicture.asset(
                  widget.icon!,
                  color: widget.textColor,
                  height: 20,
                ),
              if (widget.icon != null && !widget.loading)
                const SizedBox(width: 10),
              if (!widget.loading)
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: widget.gradient ? Colors.white : widget.textColor,
                    fontSize: 16,
                  ),
                ),
              if (widget.loading)
                SmallLoader(
                  color: Colors.white,
                  adaptive: true,
                )
            ],
          ),
        ),
      ),
    );
  }
}
