import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_learn/blog/models/blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/favorite_blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/list_all_blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/single_article_with_params.dart';
import 'package:go_router_learn/blog/presentation/screens/single_blog_argument.dart';
import 'package:go_router_learn/config/routes/pages/not_found_page.dart';
import 'package:go_router_learn/home/presentation/sreens/home_page.dart';

class AppRouter {
  // all the route paths. So that we can access them easily  across the app
  static const root = '/';
  static const allBlogs = '/blogs';
  static const favoriteBlogs = '/favorite';
  static const singleArticle = '/article';

  // static const singleArticleWithParams = '/article/:id';
  /// get route name with parameters, here [id] is optional because we need [:id] to define path on [_singleArticleWithParams]
  static singleArticleWithParams([String? id]) => '/article/${id ?? ':id'}';

  /// private static methods that are accessible only in this class and not from outside
  static Widget _homePageRouteBuilder(BuildContext context, GoRouterState state) => const HomePage();
  static Widget _allBlogsRouteBuilder(BuildContext context, GoRouterState state) => const AllBlogs();
  static Widget _favoriteBlogs(BuildContext context, GoRouterState state) => const FavoriteBlogs();
  static Widget _singleBlog(BuildContext context, GoRouterState state) => SingleArticle(blog: state.extra as Blog);
  static Widget _singleArticleWithParams(BuildContext context, GoRouterState state) =>
      SingleArticleWithParams(id: state.params["id"]!);
  static Widget errorWidget(BuildContext context, GoRouterState state) => const NotFoundPage();

  /// use this in [MaterialApp.router]
  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: root, builder: _homePageRouteBuilder),
      GoRoute(path: allBlogs, builder: _allBlogsRouteBuilder),
      GoRoute(path: favoriteBlogs, builder: _favoriteBlogs),
      GoRoute(path: singleArticle, builder: _singleBlog),
      GoRoute(path: singleArticleWithParams(), builder: _singleArticleWithParams)
    ],
    errorBuilder: errorWidget,
  );

  static GoRouter get router => _router;
}
