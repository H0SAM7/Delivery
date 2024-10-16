
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
        //  border: Border.all(width: .2,color: newColoR2),
            borderRadius: BorderRadius.circular(10),
            //color: orangeColor,
            ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(Assets.iconsGoogle,width: 50,height: 40,) ,
               Text(
                textAlign: TextAlign.center,
                'sign_with_google',
                style: const TextStyle(
                 // color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}