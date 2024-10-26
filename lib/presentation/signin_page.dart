import 'package:bondapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:bondapp/core/utils/common.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _signInLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill in email address';
                    }
                    return null;
                  },
                  controller: _emailController,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  ),
                  obscureText: true,
                ),
              ),
              _signInLoading
                  ? const Center(child: CircularProgressIndicator())
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
                              password: _passwordController.text,
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Sign-in failed'),
                                backgroundColor: Color.fromARGB(255, 12, 3, 3),
                              ),
                            );
                            setState(() {
                              _signInLoading = false;
                            });
                          }
                          if (_signInLoading == true)
                            Navigator.of(context).pushReplacementNamed(
                                AppRoutes.appWireframeTenScreen);
                        },
                        child: const Text('Sign In'),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
