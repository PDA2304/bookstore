import 'package:bookstore/domain/entity/role_entity.dart';
import 'package:flutter/material.dart';

class CardUsers extends StatelessWidget {
  CardUsers({
    super.key,
    required this.id,
    required this.login,
    required this.idRole,
  });
  final int id;
  final String login;
  final RoleEnum idRole;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      highlightColor: Colors.indigo[400],
      focusColor: Colors.indigo[200],
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                child: Text(
                  id.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(child: Text(login)),
              Icon(
                idRole == RoleEnum.admin ? Icons.spa : Icons.people,
              ),
              const SizedBox(width: 5)
            ],
          ),
        ),
      ),
    );
  }
}
