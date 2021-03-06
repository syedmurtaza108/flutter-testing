import 'package:flutter_testing_new_template/src/general/base_ui_model.dart';

part '../model/post_item.part.dart';

class PostItem extends BaseUiModel<_PostItem> {
  PostItem({
    required String title,
    required int id,
  }) : super(itemType: ItemType.item, data: _PostItem(title: title, id: id));

  PostItem.loader()
      : super(
          itemType: ItemType.loader,
        );
}
