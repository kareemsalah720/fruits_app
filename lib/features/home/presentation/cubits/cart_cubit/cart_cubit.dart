import 'package:bloc/bloc.dart';
import 'package:fruits_app/features/home/domain/entites/car_item_entity.dart';
import 'package:fruits_app/features/home/domain/entites/cart_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);

  void addItemToCart(CarItemEntity carItemEntity) {
    cartEntity.addCartItem(carItemEntity);
    emit(CartItemAdded());
  }
}
