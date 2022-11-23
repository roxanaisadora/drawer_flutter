import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'images/logo.png',
                  height: 300.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              const SizedBox(
                height: 15,
              ),
              _passwordTextField(),
              const SizedBox(
                height: 20.0,
              ),
              _bottonLogin(),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: const Text(
                  'Ver la  tienda sin logearse',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electrónico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: const Text('Iniciar Sesion'),
        ),
      );
    });
  }
}
