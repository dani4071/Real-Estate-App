import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/navigation_menu.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('Email'),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter email",
              labelStyle: TextStyle(color: Colors.grey),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Password'),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(
                  Icons.visibility_off,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.offAll(() => navigationMenu()),
              child: const Text("L O G I N"),

            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}