import 'package:dartz/dartz.dart';
import 'package:food_plus/core/error/failures.dart';
import 'package:food_plus/services/item_details/domain/entities/item_details.dart';

abstract class ItemDetailsRepository {
  Future<Either<Failure, ItemDetails>> getItemDetails(int itemId);
}