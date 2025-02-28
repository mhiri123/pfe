import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/glowing_button.dart';
import '../../../widgets/gradient_background.dart';
import '../../../widgets/stylized_text_field.dart';
import '../controllers/forgot_password_controller.dart';
// ✅ Ensure correct import


class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mot de passe oublié'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: GradientBackground(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Entrez votre email pour réinitialiser le mot de passe :',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                StylizedTextField(
                  label: 'Email',
                  icon: Icons.email,
                  controller: controller.emailController, keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                GlowingButton(
                  text: 'Envoyer',
                  onPressed: () {
                    if (controller.emailController.text.isEmpty ||
                        !controller.emailController.text.isEmail) {
                      Get.snackbar('Erreur', 'Veuillez entrer un email valide');
                    } else {
                      controller.resetPassword();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}