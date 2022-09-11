import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:instyl/utils/validator.dart';
import 'package:instyl/widgets/custom_text_field.dart';

import '../constants.dart';
import '../utils/toast.dart';
import '../widgets/custom_button.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup_screen';
  const SignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passConfirmController = TextEditingController();
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _nameController.dispose();
    _lastNameController.dispose();
    _passConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: kHeadingStyle2,
        ),
        backgroundColor: kBgColor,
      ),
      backgroundColor: kBgColor,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height ,
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r)),
              ),
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Form(
                        key: signUpKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                                validatorFn: uNameValidator,
                                obscure: false,
                                controller: _nameController,
                                hintText: 'First Name',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                            CustomTextField(
                                validatorFn: uNameValidator,
                                obscure: false,
                                controller: _lastNameController,
                                hintText: 'Last Name',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                            CustomTextField(
                                obscure: false,
                                validatorFn: emailValidator,
                                controller: _emailController,
                                hintText: 'Email',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                            CustomTextField(
                                obscure: true,
                                validatorFn: passValidator,
                                controller: _passController,
                                hintText: 'Password',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                            CustomTextField(
                                obscure: true,
                                validatorFn: passValidator,
                                controller: _passConfirmController,
                                hintText: 'Confirm Password',
                                onChanged: (val) {},
                                onFieldSubmitted: (val) {}),
                          ],
                        ),
                      ),
                      Center(
                          child: CustomButton(
                              isLoading: _isLoading,
                              onPressed: () {
                                showToast('Account Created Successfully');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const LoginScreen()));
                              },
                              buttonText: 'Sign Up')),
                      SizedBox(
                        height: 70.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?', style: kBodyStyle2),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginScreen()));
                            },
                            child: Text(' Login', style: kBodyStyle2a),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
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
