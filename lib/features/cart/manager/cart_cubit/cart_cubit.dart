import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:delivery/features/home/data/models/menu_model/menu_model.dart';
import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  addItem(
    MenuModel cartItem,
  ) async {
    emit(CartLoading());

    try {
      var cartBox = Hive.box<MenuModel>('cartBox');
      await cartBox.add(cartItem);
      emit(CartSuccess());
    } catch (e) {
      log(e.toString());
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  List<MenuModel> items = [];
  fetchAllItems() async {
    var itemsBox = Hive.box<MenuModel>('cartBox');
    items = itemsBox.values.toList();
    emit(CartSuccess());
  }

  clearCart() async {
    try {
      var cartBox = await Hive.openBox<MenuModel>('cartBox');

      await cartBox.clear(); // This clears all items from the box
      await fetchAllItems();
    } catch (e) {
      log(e.toString());
    }
  }
     


  @override
  void onChange(Change<CartState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
