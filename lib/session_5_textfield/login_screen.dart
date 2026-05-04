import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_5_textfield/custom_text_field.dart';
import 'package:flutter_widgets/session_5_textfield/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: loginKey,
            child: Column(
              children: [
                //email text form field
                CustomTextFormField(
                  maxLines: 3,
                  controller: emailController,
                  labelText: "Email",
                  hintText: "enter your email",
                  helperText: "Ex: email@gmail.com",
                  prefix: Icons.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can not be empty";
                    }
                    if (!value.contains("@gmail.com")) {
                      return "Email must contain @gmail.com";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                //password text form field
                CustomTextFormField(
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "enter your password",
                  helperText: "Ex: 1234",
                  prefix: Icons.password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can not be empty";
                    }
                    if (value.length < 6) {
                      return "password length can not be less than 6";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                //login button
                TextButton(
                  onPressed: () {
                    if (loginKey.currentState!.validate()) {
                      //login
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomeScreen(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
