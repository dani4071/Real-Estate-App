import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/authentication/controllers/login/login_controller.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../../utils/validator/validation.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('Email'),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: controller.email,
            validator: (value) => danValidator.validateEmail(value),
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
          Obx(
                () => TextFormField(
              validator: (value) => danValidator.validateEmptyText("password", value),
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              decoration: InputDecoration(
                labelText: danTexts.password,
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      controller.hidePassword.value =
                      !controller.hidePassword.value;
                    }),
              ),
            ),
          ),
          const SizedBox(
            height: danSizes.spacebtwInputFields,
          ),
          Row(
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                        value: controller.rememberMe.value,
                        checkColor: Colors.white,
                        onChanged: (value) {
                      controller.rememberMe.value = !controller.rememberMe.value;
                    }),
                  ),
                  Text("Remember me")
                ],
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signInWithEmailAndPaasword(),
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