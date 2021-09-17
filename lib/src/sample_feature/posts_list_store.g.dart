// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostsListStore on _PostsListStore, Store {
  final _$_postItemAtom = Atom(name: '_PostsListStore._postItem');

  List<PostItem> get postItem {
    _$_postItemAtom.reportRead();
    return super._postItem;
  }

  @override
  set _postItem(List<PostItem> value) {
    _$_postItemAtom.reportWrite(value, super._postItem, () {
      super._postItem = value;
    });
  }

  final _$fetchPostItemAsyncAction =
      AsyncAction('_PostsListStore.fetchPostItem');

  @override
  Future<void> fetchPostItem() {
    return _$fetchPostItemAsyncAction.run(() => super.fetchPostItem());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
