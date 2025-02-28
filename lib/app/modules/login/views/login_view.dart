import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/glowing_button.dart';
import '../../../widgets/gradient_background.dart';
import '../../../widgets/stylized_text_field.dart';
import '../controllers/login_controller.dart';
import '../controllers/forgot_password_controller.dart';
import '../controllers/signup_controller.dart';

import 'forget_view.dart';
import 'signup_view.dart';

class LoginView extends GetView<LoginController> {
const LoginView({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
body: GradientBackground(
child: Center(
child: Padding(
padding: const EdgeInsets.all(16),
child: SingleChildScrollView(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Bienvenue',
style: TextStyle(
fontSize: 42,
fontWeight: FontWeight.bold,
color: Colors.white,
)),
const SizedBox(height: 40),
StylizedTextField(
label: 'Email',
icon: Icons.email,
controller: controller.emailController,
keyboardType: TextInputType.emailAddress,
),
  const SizedBox(height: 20),
StylizedTextField(
label: 'Mot de passe',
icon: Icons.lock,
obscureText: true,
controller: controller.passwordController,
keyboardType: TextInputType.visiblePassword,
),
const SizedBox(height: 20),
GlowingButton(text: 'Se connecter', onPressed: () {}),
TextButton(
onPressed: () {
// Register the ForgotPasswordController and navigate to ForgotPasswordScreen
Get.lazyPut(() => ForgotPasswordController());
Get.to(() => ForgotPasswordScreen());

},

child: Text('Mot de passe oublié ?'),
),
TextButton(
onPressed: () {
  Get.to(() => SignupScreen());
  Get.lazyPut(() => SignupController());
},
child: Text('Créer un compte'),
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