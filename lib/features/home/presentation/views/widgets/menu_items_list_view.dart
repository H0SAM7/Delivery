import 'package:delivery/features/home/presentation/manager/menu_cubit/menu_cubit.dart';
import 'package:delivery/features/home/presentation/views/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuItemsListView extends StatelessWidget {
  const MenuItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<MenuCubit, MenuState>(
      builder: (context, state) {
        if (state is MenuSuccess) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size.width > size.height ? 3 : 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 3,
            ),
            itemCount: state.menu.length-5,
            itemBuilder: (context, index) {
              return MenuItem(
                menuModel: state.menu[index+5],
              );
            },
          );
        } else {
          return const Text('data errr');
        }
      },
    );
  }
}
