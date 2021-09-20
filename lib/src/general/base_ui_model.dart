abstract class BaseUiModel<T> {
  final ItemType itemType;
  final T? _data;
  
  T get data => itemType == ItemType.loader
      ? throw Exception('Loader cannot have data')
      : _data!;

  BaseUiModel({
    required this.itemType,
    T? data,
  }) : _data = data;
}

enum ItemType { loader, item }
