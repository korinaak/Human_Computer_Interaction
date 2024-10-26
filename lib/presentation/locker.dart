import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Lockerpage extends StatefulWidget {
  const Lockerpage({super.key});

  @override
  _PhoneInputPageState createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<Lockerpage> {
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _signUpLoading = false;
  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Number'),
      ),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: TextField(
      //       controller: _phoneController,
      //       decoration: const InputDecoration(
      //         labelText: 'Enter your phone number',
      //         border: OutlineInputBorder(),
      //       ),
      //       keyboardType: TextInputType.phone,
      //     ),
      //   ),
      // ),

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
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    label: Text('Locker ID'),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
