import 'package:flutter/material.dart';

class socialLoginButtons extends StatelessWidget {
  final Function() onGoogleClick;
  final Function() onFbClick;
  const socialLoginButtons(
      {Key? key, required this.onFbClick, required this.onGoogleClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
