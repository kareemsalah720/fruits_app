import 'package:fruits_app/core/entites/review_entity.dart';

// num getAvgRating(List<ReviewEntity> reviews) {
//   var sum = 0.0;
//   for (var review in reviews) {
//     sum += review.ratting;
//   }
//   return sum / reviews.length;
// }
num getAvgRating(List<ReviewEntity> reviews) {
  if (reviews.isEmpty) return 0;
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  return sum / reviews.length;
}
