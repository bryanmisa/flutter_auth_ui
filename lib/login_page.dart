import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/my_button.dart';
import 'package:flutter_auth_ui/components/my_textfields.dart';
import 'package:flutter_auth_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              // welcome back, you've been missed!
              Text(
                'Welcome Back, you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // username text field
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // password text field
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Pasword?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // google or apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(
                    imagepath: 'assets/images/google.png',
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(
                    imagepath: 'assets/images/apple.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // not a memeber? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
