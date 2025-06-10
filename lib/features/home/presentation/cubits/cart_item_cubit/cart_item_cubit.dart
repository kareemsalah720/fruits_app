import 'package:bloc/bloc.dart';
import 'package:fruits_app/features/home/domain/entites/cart_item_entity.dart';

part 'cart_item_cubit_state.dart';

class CartItemCubit extends Cubit<CartItemCubitState> {
  CartItemCubit() : super(CartItemCubitInitial());
  void updateCartItem(CartItemEntity carItem) {
    emit(CartItemUpdated(carItem));
  }
}
