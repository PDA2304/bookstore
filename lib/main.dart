import 'index.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'sing_in',
      routes: {
        'sing_in': (context) => SingIn(),
        'sing_up': (context) => SingUp(),
        'admin': (contex) => HomeAdmin(),
        'client': (context) => HomeClient()
      },
    );
  }
}
