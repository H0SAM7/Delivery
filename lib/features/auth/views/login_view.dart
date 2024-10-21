import 'package:delivery/constants.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/auth/views/register_view.dart';
import 'package:delivery/features/auth/views/widgets/auth_header.dart';
import 'package:delivery/features/auth/views/widgets/custom_send_button.dart';
import 'package:delivery/features/auth/views/widgets/custom_text_field.dart';
import 'package:delivery/features/auth/views/widgets/google_button.dart';
import 'package:delivery/features/auth/views/widgets/have_acc_widget.dart';
import 'package:delivery/features/auth/views/widgets/or_widget.dart';
import 'package:delivery/features/auth/views/widgets/social_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E2E),
      body:
          // size: MediaQuery.of(context).size,
          CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            
            child: Container(
              height: MediaQuery.sizeOf(context).height*.3,
              decoration: const BoxDecoration(
                  color: Color(0xff1E1E2E),
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagesBk,
                    ),
                    fit: BoxFit.fill,
                  )),
              child: const AuthHeader(
                title: 'Log In',
                subTitle: 'Please sign in to your existing account',
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),

                    CustomTextFrom(
                      hint: 'Enter Your Email',
                      label: 'Email',
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    CustomTextFrom(
                      hint: "enter  your password",
                      label: 'Password',
                      isPasswordField: true,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginView.id);
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(color: orangeColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomSendButton(
                      label: 'Login',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          // Navigator.pushReplacementNamed(
                          //     context, BottomNavigator.id);
                          // await BlocProvider.of<AuthCubit>(context)
                          //     .login(
                          //         email: email!, password: password!);
                          //         await FirebaseMessaging.instance.subscribeToTopic('weather');
                        }
                      },
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HaveAccWidget(
                          title: 'Don’t have an account? ',
                          action: 'Sign Up',
                          onPressed: () {
                            Navigator.pushNamed(context, RegisterView.id);
                          },
                        ),
                      ],
                    ),
                    const OrWidget(),
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
                    const SocialAuth(),
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
