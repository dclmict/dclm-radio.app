import 'package:flutter/material.dart';

import 'package:dclm_radio/utils/icons.dart';

/// Custom Twin Button  widget configured with Theme.
class CustomTwinButtonWidget extends StatelessWidget {
  final String firstButtonText;
  final String secondButtonText;
  final Image firstIcon;
  final Image secondIcon;
  final void Function()? onFirstButtonTap;
  final void Function()? onSecondButtonTap;
  const CustomTwinButtonWidget(
      {super.key,
      this.onFirstButtonTap,
      required this.firstButtonText,
      required this.secondButtonText,
      required this.firstIcon,
      required this.secondIcon,
      this.onSecondButtonTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border(
            top: BorderSide(
              color: Color(0xFFFF6687),
            ),
            bottom: BorderSide(
              color: Color(0xFFFF6687),
            ),
            left: BorderSide(
              color: Color(0xFFFF6687),
            ),
            right: BorderSide(
              color: Color(0xFFFF6687),
            ),
          ),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: onFirstButtonTap,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.48,
              padding: const EdgeInsets.all(8),
              color: onSecondButtonTap == null
                  ? Colors.white.withOpacity(0.15)
                  : const Color(0xFFFF6687),
              child: Row(children: [
                ImageIcon(firstIcon.image),
                const SizedBox(
                  width: 5,
                ),
                Text(firstButtonText),
              ]),
            ),
          ),
          GestureDetector(
            onTap: onSecondButtonTap,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.47,
              padding: const EdgeInsets.all(8),
              color: onSecondButtonTap == null
                  ? const Color(0xFFFF6687)
                  : Colors.white.withOpacity(0.15),
              child: Row(children: [
                ImageIcon(secondIcon.image),
                const SizedBox(
                  width: 5,
                ),
                Text(secondButtonText),
              ]),
            ),
          ),
        ]));
  }
}

/// Custom Elevated Button configured with Theme.
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Image icon;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {super.key, required this.text, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 52,
        width: 328,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              ImageIcon(icon.image),
            ],
          ),
        ));
  }
}

/// Custom TextFormField configured with Theme.

class CustomTextField extends StatefulWidget {
  final bool passwordField;
  final String text;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  CustomTextField({
    Key? key,
    this.passwordField = false,
    required this.text,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            widget.text,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Color(0xFFFF6687)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 52,
              decoration: const BoxDecoration(
                  color: Color(0xFF181C33),
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFFF6687), width: 4))),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TextField(
                  obscureText: widget.passwordField,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    prefixIcon: widget.prefixIcon,
                    suffixIcon: widget.suffixIcon != null
                        ? Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: widget.suffixIcon,
                          )
                        : null,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GenderSelector extends StatefulWidget {
  final String firstText;
  final String secondText;
  final void Function()? onFirstButtonTap;
  final void Function()? onSecondButtonTap;
  GenderSelector({
    Key? key,
    required this.firstText,
    required this.secondText,
    this.onFirstButtonTap,
    this.onSecondButtonTap,
  }) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  bool hasBeenTap = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: hasBeenTap
                    ? const Color(0xFFFF6687)
                    : Colors.white.withOpacity(0.15),
                shape: RoundedRectangleBorder(

                    // border radius
                    borderRadius: BorderRadius.circular(8))),
            onPressed: () {
              setState(() {
                hasBeenTap = !hasBeenTap;
              });
            },
            child: Text(widget.firstText),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: hasBeenTap
                    ? Colors.white.withOpacity(0.15)
                    : const Color(0xFFFF6687),
                shape: RoundedRectangleBorder(

                    // border radius
                    borderRadius: BorderRadius.circular(8))),
            onPressed: () {
              setState(() {
                hasBeenTap = !hasBeenTap;
              });
            },
            child: Text(widget.secondText),
          ),
        )
      ],
    );
  }
}
