import 'package:bookstore/presentation/widgets/drawer_admin.dart';
import 'package:flutter/material.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  int index = 0;
  List<Widget> content = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.indigo,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Админка:Главная'),
      ),
      drawer: DrawerAdmin(
        index: (index) {
          setState(() {
            this.index = index;
          });
        },
        titleItem: const [
          'Пользователи',
          'Книги',
          'Настройки',
        ],
      ),
      body: content[index],
    );
  }
}
