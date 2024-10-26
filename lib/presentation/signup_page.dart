import 'package:bondapp/presentation/locker.dart';
import 'package:bondapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:bondapp/core/utils/common.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage(emailController, {super.key});

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   bool _signUpLoading = false;

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 child: TextFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please fill in email address';
//                     }
//                     return null;
//                   },
//                   controller: _emailController,
//                   decoration: const InputDecoration(
//                     label: Text('Email'),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 child: TextFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please fill in password';
//                     }
//                     return null;
//                   },
//                   controller: _passwordController,
//                   decoration: const InputDecoration(
//                     label: Text('Password'),
//                   ),
//                   obscureText: true,
//                 ),
//               ),
//               _signUpLoading
//                   ? const Center(child: CircularProgressIndicator())
//                   : Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 5),
//                       child: OutlinedButton(
//                         onPressed: () async {
//                           final isValid = _formKey.currentState?.validate();
//                           if (isValid != true) {
//                             return;
//                           }

//                           setState(() {
//                             _signUpLoading = true;
//                           });
//                           try {
//                             await client.auth.signUp(
//                               email: _emailController.text,
//                               password: _passwordController.text,
//                             );

//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Success. Confirm your account'),
//                                 backgroundColor: Colors.redAccent,
//                               ),
//                             );
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const Lockerpage()),
//                             );
//                           } catch (e) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Sign-Up Failed'),
//                                 backgroundColor: Colors.redAccent,
//                               ),
//                             );
//                           }
//                           setState(() {
//                             _signUpLoading = false;
//                           });
//                         },
//                         child: const Text('Sign Up'),
//                       ),
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:bondapp/core/utils/common.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _signUpLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('               Sign up'),
      ),
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
              _signUpLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Success. Confirm your account'),
                                backgroundColor: Colors.green,
                              ),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Sign-Up Failed'),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                          }
                          setState(() {
                            _signUpLoading = false;
                          });
                          if (_signUpLoading == true)
                            Navigator.of(context)
                                .pushReplacementNamed(AppRoutes.SigninPage);
                        },
                        child: const Text('Sign Up'),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
