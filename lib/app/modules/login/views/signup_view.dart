import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/glowing_button.dart';
import '../../../widgets/gradient_background.dart';
import '../../../widgets/stylized_text_field.dart';
import '../controllers/signup_controller.dart'; // Importez le contrôleur d'inscription
class SignupScreen extends GetView<SignupController> {
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créer un compte'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: GradientBackground(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Créez votre compte',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  StylizedTextField(
                    label: 'Prénom',
                    icon: Icons.person,
                    controller: controller.firstNameController,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 10),
                  StylizedTextField(
                    label: 'Nom de famille',
                    icon: Icons.person_outline,
                    controller: controller.lastNameController, keyboardType: TextInputType.text
                  ),
                  const SizedBox(height: 10),
                  StylizedTextField(
                    label: 'Numéro de téléphone',
                    icon: Icons.phone,
                    controller: controller.phoneController,
                    keyboardType: TextInputType.phone,

                  ),
                  const SizedBox(height: 10),
                  StylizedTextField(
                    label: 'Email',
                    icon: Icons.email,
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10),
                  StylizedTextField(
                    label: 'Mot de passe',
                    icon: Icons.lock,
                      obscureText: true,
                      controller: controller.passwordController, keyboardType: TextInputType.text
                  ),
                    const SizedBox(height: 10),
                  StylizedTextField(
                    label: 'Confirmer le mot de passe',
                    icon: Icons.lock_outline,
                    obscureText: true,
                    controller: controller.confirmPasswordController, keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),

                  GlowingButton(
                    text: 'Créer un compte',
                    onPressed: () => controller.signup(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}