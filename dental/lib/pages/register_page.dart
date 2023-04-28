import 'package:flutter/material.dart';
import 'package:dental/components/my_button.dart';
import 'package:dental/components/my_textfield.dart';

import 'Login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key, required this.onTap});

  // text editing controllers
  final Function()? onTap;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Nome',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Código de matricula',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: usernameController,
                hintText: 'E-Mail',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Register(onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginPage(
                        )));
              }),

              const SizedBox(height: 10),

              BackPage(onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginPage(

                        )));
              })
            ],
          ),
        ),
      ),
    );
  }
}
