import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ItemDisplay extends Equatable {
  final int itemId;
  final String tags;

  ItemDisplay({
    @ required this.itemId,
    @ required this.tags
  }) : super([itemId, tags]);
}
