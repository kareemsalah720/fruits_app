import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/entites/product_entity.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/core/models/product_model.dart';
import 'package:fruits_app/core/repos/product_repo.dart';
import 'package:fruits_app/core/services/database_service.dart';
import 'package:fruits_app/core/utils/backend_endpoint.dart';

class ProductRepoMpl implements ProductsRepo {
  final DatabaseService databaseService;

  ProductRepoMpl(this.databaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseService.getData(
          path: BackendEndpoint.getProducts) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return right(products);
    } catch (e) {
      return left(ServerFailure('Failed to get products'));
    }
  }
}
