import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/controllers/blog_controller.dart';
import 'package:go_router_learn/blog/controllers/favorite_controller.dart';

import 'widgets/blog_list.dart';

class FavoriteBlogs extends StatefulWidget {
  const FavoriteBlogs({super.key});

  @override
  State<FavoriteBlogs> createState() => _FavoriteBlogsState();
}

class _FavoriteBlogsState extends State<FavoriteBlogs> {
  final BlogController _blogController = FavoriteBlogController()..getAllLists();

  @override
  void dispose() {
    _blogController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlogLists(blogController: _blogController));
  }
}
