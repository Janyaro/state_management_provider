import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authprovider = Provider.of<Auth_Provider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              obscureText: authprovider.absecure,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: InkWell(
                      onTap: () {
                        print(authprovider.absecure.toString());
                        if (authprovider.absecure == false) {
                          authprovider.getabsecureValue(true);
                        } else {
                          authprovider.getabsecureValue(false);
                        }
                      },
                      child: authprovider.absecure
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                authprovider.login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: authprovider.loading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            'Login ',
                            style: TextStyle(fontSize: 23),
                          )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
