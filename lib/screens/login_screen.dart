import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_flutter/utils/colors.dart';
import 'package:instagram_clone_flutter/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          children: [
            Flexible(child: Container(),flex: 2),
            SvgPicture.asset(
              'ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(height: 64),
            TextFieldInput(
            textEditingController: _emailController,
            textInputType: TextInputType.emailAddress,
            hintText: 'Enter your email'
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
            textEditingController: _passwordController,
            textInputType: TextInputType.text,
            hintText: 'Enter your password',
            isPass: true,
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              child: Container(
                child: const Text('Log in'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4)
                  )
                ),
                color: blueColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
              
            ),
            Flexible(child: Container(),flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account?"),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Text("Sign up",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
