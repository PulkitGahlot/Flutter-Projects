//import 'dart:js';

import 'package:flutter/material.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() {
    return _LoginBottomSheetState();
  }
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmedPasswordController = TextEditingController();

  void _showSuccessBox() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Login successful"),
        content: const Text("Learn Flutter!!"),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              child: const Text("okay"),
            ),
          ),
        ],
      ),
    );
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 20,
            decoration: const InputDecoration(label: Text('Name')),
          ),
          TextField(
            controller: _emailController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Email')),
          ),
          TextField(
            controller: _passwordController,
            maxLength: 6,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          TextField(
            controller: _confirmedPasswordController,
            maxLength: 6,
            decoration: const InputDecoration(label: Text('Confirm Password')),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _showSuccessBox,
                child: const Text('Confirm'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
