import 'package:flutter/material.dart';

class DrawerAdmin extends StatelessWidget {
  const DrawerAdmin({Key? key, required this.titleItem, required this.index})
      : super(key: key);

  ///
  final List<String> titleItem;
  ///
  final Function(int) index;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            child: const DrawerHeader(
              padding: EdgeInsets.all(4),
              child: Text('asd'),
            ),
          ),
          ...titleItem.map((element) {
            return InkWell(
              onTap: () {
                index(titleItem.indexOf(element));
                Navigator.pop(context);
              },
              child: item(element, false),
            );
          }).toList(),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'sing_in', (route) => false);
              Navigator.pushNamed(context, 'routeName',
                  arguments: {'': 'asdasd'});
            },
            child: item('Выход', true),
          )
        ],
      ),
    );
  }

  Widget item(String content, bool isIcon) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Row(
        children: [
          isIcon
              ? const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.exit_to_app),
                )
              : const SizedBox(),
          Text(content),
        ],
      ),
    );
  }
}
