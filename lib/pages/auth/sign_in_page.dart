import 'package:flutter/material.dart';
import 'package:thriftinc/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Sign In to Continue',
                      style: subtitleTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: backgroundColor2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_email.png',
                              width: 17,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                style: primaryTextStyle,
                                controller: emailController,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Your Email Address',
                                  hintStyle: subtitleTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: backgroundColor2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_password.png',
                              width: 17,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: primaryTextStyle,
                                obscureText: true,
                                controller: passwordController,
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Your Password',
                                  hintStyle: subtitleTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        'Sign Up',
                        style: purpleTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
