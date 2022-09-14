import 'dart:async';

import 'package:go_router_learn/blog/controllers/blog_controller.dart';
import 'package:go_router_learn/blog/models/blogs.dart';
import 'package:go_router_learn/blog/repostitories/all_blogs.dart';
import 'package:go_router_learn/blog/repostitories/blogs_abstract.dart';

class FavoriteBlogController implements BlogController {
  final BlogRepository blogRepository = AllBlogsRepo();
  final StreamController<List<Blog>> _streamController = StreamController();

  FavoriteBlogController();

  @override
  Stream<List<Blog>> get stream => _streamController.stream;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void getAllLists() async {
    _streamController.add(await blogRepository.getFavoriteBlogs());
  }

  @override
  void toggleFavorite(String id) async {
    await blogRepository.toggleFevorite(id);
    getAllLists();
  }
}
