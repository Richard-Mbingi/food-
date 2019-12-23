import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ItemDetails extends Equatable {
  final int itemId;
  final String tags;

  ItemDetails({
    @ required this.itemId,
    @ required this.tags
  }) : super([itemId, tags]);
}
