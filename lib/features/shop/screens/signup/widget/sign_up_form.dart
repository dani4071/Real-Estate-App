import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';



class danSignUpForm extends StatelessWidget {
  const danSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "FirstName"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(
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
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: danTexts.username),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.message),
              labelText: danTexts.email),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: danTexts.phoneNumber),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.fingerprint),
            labelText: danTexts.password,
            suffixIcon: Icon(Icons.visibility_off),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Checkbox(
                value: true,
                checkColor: Colors.white,
                onChanged: (value) {}),
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
                onPressed: () {},
                child: const Text(danTexts.createAccount)))
      ],
    );
  }
}