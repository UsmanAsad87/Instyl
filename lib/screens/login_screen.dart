import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/screens/signup_screen.dart';
import 'package:instyl/screens/topics_page.dart';
import 'package:instyl/widgets/custom_button.dart';
import '../constants.dart';
import '../utils/validator.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  GlobalKey<FormState> loginInKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 340.h,
              //alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        'assets/login_bg.png',
                      ))),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: (size.height * 0.33),
            child: Container(
              height: size.height - (size.height * 0.33),
              padding: EdgeInsets.only(left: 40.w, right: 40.w),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r)),
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Text(
                        'Login',
                        style: kHeadingStyle1,
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      Form(
                        key: loginInKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                                validatorFn: emailValidator,
                                obscure: false,
                                controller: _emailController,
                                hintText: 'Email',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextField(
                                validatorFn: passValidator,
                                obscure: true,
                                controller: _passController,
                                hintText: 'Password',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child: CustomButton(
                              isLoading: _isLoading,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => TopicsPageScreen()));
                              },
                              buttonText: 'Login')),
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t have an account?', style: kBodyStyle2),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SignupScreen()));
                            },
                            child: Text(' Sign Up', style: kBodyStyle2a),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
