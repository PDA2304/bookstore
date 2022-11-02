import 'package:bookstore/domain/entity/role_entity.dart';

class UsersEnity {
  late int id;
  final String login;
  final String password;
  final RoleEnum idRole;

  UsersEnity({
    this.id = 0,
    required this.login,
    this.password = '',
    required this.idRole,
  });
}
