import 'package:delivery/core/widgets/custom_alert.dart';
import 'package:delivery/core/widgets/custom_app_bar.dart';
import 'package:delivery/core/widgets/custom_loading_indecator.dart';
import 'package:delivery/features/home/data/models/restaurant_model.dart';
import 'package:delivery/features/home/presentation/manager/menu_cubit/menu_cubit.dart';
import 'package:delivery/features/home/presentation/views/widgets/menu_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MenuItemsView extends StatelessWidget {
  const MenuItemsView({super.key});
  static String id = 'MenuItemsView';
  @override
  Widget build(BuildContext context) {
    final resturanModel =
        ModalRoute.of(context)?.settings.arguments as RestaurantModel;

    return BlocListener<MenuCubit, MenuState>(
      listener: (context, state) {
        if (state is MenuLoading) {
          const CustomLoadingIndicator();
        }
        else if(state is MenuFailure){
              showCustomAlert(
            context: context,
            type: AlertType.error,
            title: 'Error',
            description: state.errMessage,
            onPressed: () {
              Navigator.pop(context);
            },
            actionTitle: 'Ok',
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppBar(title: 'Menu'),
              Expanded(
                  child: MenuItemsListView(
                restaurantModel: resturanModel,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
