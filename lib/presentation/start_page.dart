/*//import 'dart:html';
import 'package:bondapp/core/utils/common.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool _signInLoading = false;
  bool _signUpLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ///Email
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill in email adreess';
                  }
                  return null;
                },
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text('Email'),
                ), //InputDEcoration
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            ///Password
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill in password';
                  }
                  return null;
                },
                controller: _passwordController,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ), //InputDEcoration
                obscureText: true,
              ),
            ),

            ///Sign In Button
            _signInLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: OutlinedButton(
                      onPressed: () async {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid != true) {
                          return;
                        }
                        setState(() {
                          _signInLoading = true;
                        });
                        try {
                          await client.auth.signInWithPassword(
                              email: _emailController.text,
                              password: _passwordController.text);
                        } catch (e) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Sign-in failed'),
                            backgroundColor: Color.fromARGB(255, 12, 3, 3),
                          ));
                          setState(() {
                            _signInLoading = false;
                          });
                        }
                      },
                      child: const Text('Sign In'),
                    ),
                  ),

            ///Sign Up Button
            _signUpLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: OutlinedButton(
                      onPressed: () async {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid != true) {
                          return;
                        }

                        setState(() {
                          _signUpLoading = true;
                        });
                        try {
                          await client.auth.signUp(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Success. Confirm your account'),
                            backgroundColor: Colors.redAccent,
                          ));
                        } catch (e) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Sign-Up Failed'),
                            backgroundColor: Colors.redAccent,
                          ));
                        }
                        setState(() {
                          _signUpLoading = false;
                        });
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:bondapp/core/utils/common.dart';
import 'package:bondapp/presentation/locker.dart';
import 'package:flutter/material.dart';
import 'package:bondapp/presentation/signin_page.dart';
import 'package:bondapp/presentation/signup_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Text('Sign In',
                  style: TextStyle(
                      color: Colors.white)), // Ensure text color is visible
            ),
            SizedBox(height: 20), // Add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lockerpage()),
                );
              },
              child: Text('Sign Up',
                  style: TextStyle(
                      color: Colors.white)), // Ensure text color is visible
            ),
          ],
        ),
      ),
    );
  }
}
