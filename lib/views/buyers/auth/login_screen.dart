import 'package:flutter/material.dart';
import 'package:ms_multi_store/views/buyers/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Customer"s Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),    
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Email',
                  hintText: 'Enter your email address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Password',
                  hintText: 'Enter your password',
                ),
              ),
            ),
            const SizedBox(height: 8.0),
           Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.yellow.shade900,
              borderRadius: BorderRadius.circular(10),
            
            ),
            child:const  Center( 
              child: Text(
                'Login',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
            ),
           ),

           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                  child: const Text('Register'),
                )
              ],  
           )
          ],
        ),
      ),
    );
  }
}