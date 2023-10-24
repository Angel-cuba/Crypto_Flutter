import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.blueAccent),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.white),
            alignLabelWithHint: true,
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: Colors.white),
            alignLabelWithHint: true,
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child:
                MaterialButton(onPressed: () {}, child: const Text('Login1'))),
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: MaterialButton(
                onPressed: () {}, child: const Text('Register'))),
      ]),
    ));
  }
}
