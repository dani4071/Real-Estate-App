import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/features/authentication/controllers/sign_up/sign_up_controller.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../../utils/validator/validation.dart';

class danSignUpForm extends StatelessWidget {
  const danSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController();

    return Form(
      key: controller.signupFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header Texts
          Text(
            danTexts.signUpTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      danValidator.validateEmptyText("First Name", value),
                  controller: controller.firstName,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: "FirstName"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      danValidator.validateEmptyText("Last Name", value),
                  controller: controller.lastName,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: danTexts.lastname),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          TextFormField(
            validator: (value) =>
                danValidator.validateEmptyText("Username", value),
            controller: controller.username,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: danTexts.username),
          ),

          const SizedBox(
            height: 20,
          ),

          TextFormField(
            validator: (value) => danValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.message), labelText: danTexts.email),
          ),

          const SizedBox(
            height: 20,
          ),

          TextFormField(
            validator: (value) => danValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), labelText: danTexts.phoneNumber),
          ),

          const SizedBox(
            height: 20,
          ),

          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => danValidator.validatePassword(value),
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: danTexts.password,
                prefixIcon: const Icon(Icons.fingerprint),
                suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Icons.remove_red_eye),
                    onPressed: () {
                      controller.hidePassword.value =
                          !controller.hidePassword.value;
                    }),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Checkbox(
                  value: true, checkColor: Colors.white, onChanged: (value) {}),
              Text.rich(TextSpan(children: [
                const TextSpan(text: "${danTexts.iAgreeTo} "),
                TextSpan(
                    text: "${danTexts.privacyPolicy} and ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(decoration: TextDecoration.underline)),
                TextSpan(
                    text: danTexts.termsOfUse,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(decoration: TextDecoration.underline)),
              ]))
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.signUp(),
                  child: const Text(danTexts.createAccount)))
        ],
      ),
    );
  }
}
