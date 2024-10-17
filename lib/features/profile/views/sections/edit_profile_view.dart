import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});
  static String id = 'EditProfileView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(title: 'Edit Profile'),
              CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.orange,
                  child: Image.asset(Assets.iconsEditprofile)),
               const SizedBox(
                height: 20,
              ),
              const CustomTextFrom(label: 'Full Name', hint: 'Hosam Adel'),
              const SizedBox(
                height: 20,
              ),
               const CustomTextFrom(label: 'Email', hint: 'hosam@gmail.com'),
                const SizedBox(
                height: 20,
              ),
               const CustomTextFrom(label: 'Phone Number', hint: '01098894833'),
               const SizedBox(
                height: 30,
              ),
              CustomSendButton(label: 'Save',onTap: (){
                Navigator.pop(context);
              },)
            ],
          ),
        ),
      ),
    );
  }
}

