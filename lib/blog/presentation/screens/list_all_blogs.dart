import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/controllers/blog_controller.dart';

import 'widgets/blog_list.dart';

class AllBlogs extends StatefulWidget {
  const AllBlogs({super.key});

  @override
  State<AllBlogs> createState() => _AllBlogsState();
}

class _AllBlogsState extends State<AllBlogs> {
  final BlogController _blogController = AllBlogController()..getAllLists();

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
