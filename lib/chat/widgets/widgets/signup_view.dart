import 'package:chat_app_ui/auth/signin_view.dart';
import 'package:chat_app_ui/colors.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

 @override
  State<SignUpView> createState() => _SignUpVoewState();
}

class _SignUpVoewState extends State<SignUpView> {
  bool isNotvisable =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'create A New Account',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  label: 'Name',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  label: 'Email',
                  prefixIcon: Icons.email,
                ),
                const SizedBox(
                  height: 15,
                ),
const SizedBox(
  height: 15,
),



                CustomTextField(
                    label: 'password',
                    


                    prefixIcon: Icons.lock,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isNotvisable=!isNotvisable;
                          });
                        },
                        icon: Icon((isNotvisable)
                        ? Icons.visibility_off_rounded
                        :Icons.remove_red_eye_rounded)),
                        ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already i have an account'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const SigninView(),
                          ));
                        },
                        child: const Text('login'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                foregroundColor: AppColors.white,
                backgroundColor: AppColors.primary),
            onPressed: onPressed,
            child: Text(text)));
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
  });

  final String label;
  final IconData prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon ?? const SizedBox(),
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}