part of 'cart_item_cubit.dart';

sealed class CartItemCubitState  {
  const CartItemCubitState();


}

final class CartItemCubitInitial extends CartItemCubitState {}
final class CartItemUpdated extends CartItemCubitState {
  final CartItemEntity cartItemEntity;

  const CartItemUpdated(this.cartItemEntity);
}