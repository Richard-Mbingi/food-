import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_plus/core/error/failures.dart';
import 'package:food_plus/services/item_details/domain/entities/item_details.dart';
import 'package:food_plus/services/item_details/domain/repositories/item_details_repository.dart';

class GetItemDetails {
  final ItemDetailsRepository repository;

  GetItemDetails(this.repository);

  Future<Either<Failure, ItemDetails>> execute({
    @required int itemId,
  }) async {
    return await repository.getItemDetails(itemId);
  }
}