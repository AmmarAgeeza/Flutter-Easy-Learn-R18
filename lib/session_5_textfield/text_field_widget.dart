import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextFieldWidget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: loginFormKey,
            child: Column(
              children: [
                TextFormField(
                
                textInputAction:TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can not be empty";
                    }
                    if (!value.contains("@gmail.com")) {
                      return "Email must contain @gmail.com";
                    }
                    return null;
                  },
                  controller: emailController,
                  keyboardType: TextInputType.name,
                 onChanged: (value){
                 log(value);},
                  maxLines: 2,
                  // onSubmitted exist only on TextField
                  // onSubmitted: (text){
                  //  log(text);
                  // },
                  decoration: InputDecoration(
                    // label: Row(children: [Icon(Icons.email), Text("Email")]),
                    labelText: "Email",
                    hintText: "Enter Your email",
                    helperText: "enter your email here",

                    helperStyle: TextStyle(color: Colors.blue, fontSize: 16),
                    // prefix: Icon(Icons.email),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    //borders
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can not be empty";
                    }
                    if (value.length < 6) {
                      return "password length can not be less than 6";
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  obscuringCharacter: '^',
                  controller: passwordController,
                  decoration: InputDecoration(
                    // label: Row(children: [Icon(Icons.email), Text("Email")]),
                    labelText: "Password",
                    hintText: "Enter Your password",
                    helperText: "enter your password here",

                    helperStyle: TextStyle(color: Colors.blue, fontSize: 16),
                    // prefix: Icon(Icons.email),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    //borders
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (loginFormKey.currentState!.validate()) {
                      log(emailController.text);
                    }
                  },
                  child: Text("Login"),
                ),
                TextButton(
                  onPressed: () {
                    emailController.clear();
                  },
                  child: Text("Clear"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
