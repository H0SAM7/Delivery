import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/auth/views/login_view.dart';
import 'package:delivery/features/auth/views/widgets/auth_header.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:delivery/features/auth/views/widgets/google_button.dart';
import 'package:delivery/features/auth/views/widgets/have_acc_widget.dart';
import 'package:delivery/features/auth/views/widgets/or_widget.dart';
import 'package:delivery/features/auth/views/widgets/social_auth.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password, phone, fatherPhone, name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E2E),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 220,
              decoration: const BoxDecoration(
                  color: Color(0xff1E1E2E),
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagesBk,
                    ),
                    fit: BoxFit.fill,
                  )),
              child: const AuthHeader(
                title: 'Sign Up',
                subTitle: 'Please sign up to get started',
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors
                    .white, // Add a background color to make the border visible

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    // SizedBox(
                    //     height: 150,
                    //     child: Image.asset(
                    //       Assets.imagesNewLogo,
                    //       color: mainColor,
                    //     )),
                    const SizedBox(
                      height: 10,
                    ),

                    CustomTextFrom(
                      hint: 'enter name',
                      label: 'Name',
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                    CustomTextFrom(
                      hint: 'enter email',
                      label: 'Email',
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    CustomTextFrom(
                      hint: 'enter password',
                      label: 'Password',
                      isPasswordField: true,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    // CustomTextFrom(
                    //   hint: "enter phone",
                    //   label: 'Phone',
                    //   onChanged: (value) {
                    //     phone = value;
                    //   },
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'complete_fields';
                    //     }
                    //     // else if (value.length != 11 &&
                    //     //     value != fatherPhone) {
                    //     //   return s.correct_number;
                    //     // }
                    //     return null;
                    //   },
                    // ),

                    HaveAccWidget(
                      title: 'You have Accounts? ',
                      action: 'Login',
                      onPressed: () {
                        Navigator.pushNamed(context, LoginView.id);
                      },
                    ),
                    CustomAuthButton(
                      label: 'Sign Up',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          // Navigator.pushReplacementNamed(
                          //     context, BottomNavigator.id);
                          // await BlocProvider.of<AuthCubit>(context)
                          //     .register(
                          //         email: email!, password: password!);
                          // await addUser(
                          //   userModel: UserModel(
                          //       userName: name!,
                          //       email: email!,
                          //       phone: phone!,
                          //       fatherPhone: fatherPhone!),
                          // );
                          // await FirebaseMessaging.instance
                          //     .subscribeToTopic('weather');
                        }
                      },
                    ),
                    const OrWidget(),
                    const SocialAuth(),
                    // GoogleButton(
                    //   onTap: () async {
                    //     // Navigator.pushReplacementNamed(
                    //     //     context, BottomNavigator.id);
                    //     // await BlocProvider.of<AuthCubit>(context)
                    //     //     .signInWithGoogle();
                    //     //     await FirebaseMessaging.instance.subscribeToTopic('weather');
                    //   },
                    // ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
