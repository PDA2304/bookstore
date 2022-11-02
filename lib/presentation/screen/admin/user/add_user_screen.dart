import 'package:bookstore/domain/entity/role_entity.dart';
import 'package:bookstore/presentation/state/user/cubit/users_cubit.dart';
import 'package:bookstore/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUserScreen extends StatelessWidget {
  AddUserScreen({super.key});

  RoleEnum _roleEnum = RoleEnum.admin;
  bool _isValid = true;

  final _loginContoller = TextEditingController();
  final _passwordContoller = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _loginContoller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Поле логин пустое';
                  }
                  if (value.length < 8) {
                    return 'Логин должен быть длинной 8 символов';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordContoller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Поле пароль пустое';
                  }
                  if (value.length < 8) {
                    return 'Пароль должен быть длинной 8 символов';
                  }
                  return null;
                },
                maxLength: 8,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField(
                value: RoleEnum.admin,
                decoration: const InputDecoration(
                  labelText: 'Тип пользователя',
                  border: OutlineInputBorder(),
                ),
                items: RoleEnum.values.map((e) {
                  return DropdownMenuItem<RoleEnum>(
                      value: e, child: Text(e.name));
                }).toList(),
                onChanged: (value) {
                  _roleEnum = value!;
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                content: 'Добавить пользователя',
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    BlocProvider.of<UsersCubit>(context).add(
                      _loginContoller.text,
                      _passwordContoller.text,
                      _roleEnum,
                      context,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
