import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Create Customer"s Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage('assets/images/user.png'),
                backgroundColor: Colors.orangeAccent,
                child:  Icon(Icons.camera_rear),
              ),
              const SizedBox(height: 8.0),
          
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration:  const InputDecoration(
                    labelText: 'Enter Email',
                    hintText: 'Enter your email address',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration:  const InputDecoration(
                    labelText: 'Enter Full Name',
                    hintText: 'Enter your full name',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration:  const InputDecoration(
                    labelText: 'Enter Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration:  const InputDecoration(
                    labelText: 'Enter Password',
                    hintText: 'Enter your password ',
                  ),
                ),
              ),
          
              const SizedBox(height: 8.0),
          
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(10)
          
                ),
                child: const Center( 
                  child:  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4
                  ),
                ),
                ),
          
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,),
                    ),
                  )
                ],
              )
              
            ],
          ),
        ),
    );
  }
}