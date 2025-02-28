import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signup() {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      Get.snackbar('Erreur', 'Veuillez remplir tous les champs');
    } else if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar('Erreur', 'Les mots de passe ne correspondent pas');
    } else {
      Get.snackbar('Succès', 'Compte créé avec succès',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white);
      // Ajoutez ici la logique pour enregistrer l'utilisateur
    }
  }
}