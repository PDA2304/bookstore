import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: SizedBox()),
              const Text(
                'Регистрация',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26),
              ),
              Expanded(child: SizedBox()),
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
                onPressed: () {},
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Expanded(flex: 3, child: SizedBox()),
              Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('asdasd');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(15),
                    primary: Colors.grey.shade700, // <-- Button color
                    onPrimary: Colors.grey.shade300, // <-- Splash color
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
