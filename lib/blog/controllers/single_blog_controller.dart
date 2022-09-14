import 'dart:async';

import 'package:go_router_learn/blog/models/blogs.dart';
import 'package:go_router_learn/blog/repostitories/all_blogs.dart';
import 'package:go_router_learn/blog/repostitories/blogs_abstract.dart';

class SingleBlogController {
  final BlogRepository blogRepository = AllBlogsRepo();
  final StreamController<Blog?> _streamController = StreamController();

  SingleBlogController();

  Stream<Blog?> get stream => _streamController.stream;

  void dispose() {
    _streamController.close();
  }

  void get(String id) async {
    _streamController.add(await blogRepository.getSingleArticle(id));
  }

  void toggleFavorite(String id) async {
    await blogRepository.toggleFevorite(id);
    get(id);
  }
}
