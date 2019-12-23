import 'package:dartz/dartz.dart';
import 'package:food_plus/services/item_details/domain/entities/item_details.dart';
import 'package:food_plus/services/item_details/domain/repositories/item_details_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_plus/services/item_details/domain/use_cases/get_item_details.dart';
import 'package:mockito/mockito.dart';

class MockItemDetailsRepository extends Mock 
  implements ItemDetailsRepository {}

  void main() {
    GetItemDetails usecase;
    MockItemDetailsRepository mockItemDetailsRepository;

    setUp(() {
      mockItemDetailsRepository = MockItemDetailsRepository();
      usecase = GetItemDetails(mockItemDetailsRepository);
    });

    final tItemId = 2133091;
    final tItemDetails = ItemDetails(itemId: 2133091, tags: "test");

    test(
      'Should get Item details from the repository',
      () async {
        when(mockItemDetailsRepository.getItemDetails(any))
            .thenAnswer((_) async => Right(tItemDetails));

        final result = await usecase.execute(itemId: tItemId);

        expect(result, Right(tItemDetails));

        verify(mockItemDetailsRepository.getItemDetails(tItemId));

        verifyNoMoreInteractions(mockItemDetailsRepository);
      }
    );
  }