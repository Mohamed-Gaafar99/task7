import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Center(
          child: Text(
            'Login Page',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.notification_important,
              size: 32.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                  'Login',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value){
                  print(value);
                },
                onChanged: (String value){
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Enter Your Mail.',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (String value){
                  print(value);
                },
                onChanged: (String value){
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: ' password.',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: ()
                {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have account?',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register Now',
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

