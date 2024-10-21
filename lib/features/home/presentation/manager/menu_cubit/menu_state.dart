part of 'menu_cubit.dart';

@immutable
sealed class MenuState {}

final class MenuInitial extends MenuState {}

final class MenuLoading extends MenuState {}

final class MenuSuccess extends MenuState {
  final List<MenuModel> menu;

  MenuSuccess({required this.menu});
}

final class MenuFailure extends MenuState {
  final String errMessage;

  MenuFailure({required this.errMessage});
}
