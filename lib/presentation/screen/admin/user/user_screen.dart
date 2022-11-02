import 'package:bookstore/domain/entity/role_entity.dart';
import 'package:bookstore/presentation/screen/admin/user/widget/card_users.dart';
import 'package:bookstore/presentation/state/user/cubit/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(onRefresh: () async {
      return Future.delayed(const Duration(seconds: 3));
    }, child: BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        if (state is UsersLoad) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is UsersLoaded) {
          if (state.list.isEmpty) {
            return Center(
              child: Text('Данных нет'),
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Количество пользователей: ${state.list.length}',
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    return CardUsers(
                      id: state.list[index].id,
                      login: state.list[index].login,
                      idRole: state.list[index].idRole,
                    );
                  },
                ),
              ),
            ],
          );
        }

        return Container();
      },
    ));
  }
}
