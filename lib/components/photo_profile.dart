import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  final double size;
  final bool addButton;
  final double verticalMargin;
  const PhotoProfile(
      {super.key,
      this.size = 120,
      this.addButton = true,
      this.verticalMargin = 20});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: verticalMargin),
          alignment: Alignment.center,
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/user.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (addButton)
          Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
      ],
    );
  }
}
