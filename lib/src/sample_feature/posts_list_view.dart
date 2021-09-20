import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_testing_new_template/src/general/base_ui_model.dart';
import 'package:flutter_testing_new_template/src/sample_feature/posts_list_store.dart';
import 'package:flutter_testing_new_template/src/services/post_service.dart';

import '../settings/settings_view.dart';

class PostsListView extends StatefulWidget {
  static const routeName = '/';

  const PostsListView({Key? key}) : super(key: key);

  @override
  State<PostsListView> createState() => _PostsListViewState();
}

class _PostsListViewState extends State<PostsListView> {
  final PostsListStore store = PostsListStore(
    service: PostService(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: store.postItem.length,
            itemBuilder: (_, index) {
              final item = store.postItem[index];
              if (item.itemType == ItemType.loader) {
                return const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'SampleItem ${store.postItem[index].data.title}',
                ),
              );
            },
          );
        },
      ),
    );
  }
}
