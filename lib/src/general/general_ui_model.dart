part '../general/ui_models.dart';

abstract class GeneralModel<T> {
  final ItemType itemType;
  late final T? data;

  GeneralModel({
    required this.itemType,
    this.data,
  });
}

enum ItemType { loader, item }
