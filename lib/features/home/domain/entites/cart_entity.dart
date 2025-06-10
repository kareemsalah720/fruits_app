import 'package:fruits_app/features/home/domain/entites/car_item_entity.dart';

class CartEntity {
  final List<CarItemEntity> cartItems;

  CartEntity(this.cartItems);

  addCartItem(CarItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }
}