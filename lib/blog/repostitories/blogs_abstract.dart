import 'package:go_router_learn/blog/models/blogs.dart';

abstract class BlogRepository {
  Future<List<Blog>> getBlogs();
  Future<void> toggleFevorite(String id);
  Future<List<Blog>> getFavoriteBlogs();
}
