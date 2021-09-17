
import 'package:flutter_testing_new_template/src/models/models.dart';
import 'package:flutter_testing_new_template/src/services/post_service.dart';
import 'package:mobx/mobx.dart';

import 'model/post_item.dart';

part 'posts_list_store.g.dart';

class PostsListStore = _PostsListStore with _$PostsListStore;

abstract class _PostsListStore with Store {
  _PostsListStore({
    required PostService service,
  }) : _service = service {
    fetchPostItem();
  }

  final PostService _service;

  @readonly
  var _postItem = [PostItem.loader()];

  @action
  Future<void> fetchPostItem() async {
    final networkItems = await _service.fetchQuote();
    _postItem = networkItems.map(
      (e) {
        final post = Post.fromJson(e);
        return PostItem(title: post.title, id: post.id);
      },
    ).toList();
  }
}
