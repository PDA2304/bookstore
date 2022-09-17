import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(child: SizedBox()),
              const Text(
                'Книжный магазин',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26),
              ),
              const Expanded(child: SizedBox()),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Логин',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'admin');
                },
                child: const Text(
                  'Войти',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Expanded(flex: 3, child: SizedBox()),
              InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () {
                  Navigator.pushNamed(context, 'sing_up');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Регистрация в системе',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
