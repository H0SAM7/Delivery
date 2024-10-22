import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:delivery/core/error/dio_failures.dart';
import 'package:delivery/core/utils/dio_helper.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:delivery/keys/api_keys.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());

  Future getMenu({required String quary}) async {
    String url =
        'https://api.spoonacular.com/food/menuItems/search?query=$quary&number=100&apiKey=${ApiKeys.menuApiKey}';
    List<MenuModel> menu = [];
    var response = await DioServices().get(
      url: url,
    );
    emit(MenuLoading());
    try {
      for (var item in response['menuItems']) {
        menu.add(MenuModel.fromJson(item));
      }
      log('fetch done');
      emit(MenuSuccess(menu: menu));
    } catch (e) {
      log('errrrrrrrrrr');
      emit(MenuFailure(
          errMessage: ServerFailure.fromDioException(e as DioException)
              .errMessage
              .toString()));
    }
  }
}
