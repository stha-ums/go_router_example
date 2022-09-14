import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_learn/blog/presentation/screens/favorite_blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/list_all_blogs.dart';
import 'package:go_router_learn/config/routes/routes.dart';

class HomePage extends StatelessWidget {
  final CurrentTab currentTab;
  const HomePage({
    super.key,
    required this.currentTab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: currentTab.index,
        child: SafeArea(
            child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  GoRouter.of(context).go(AppRouter.home(CurrentTab.values[index]));
                },
                tabs: const [Tab(text: "All"), Tab(text: "Favorite")]),
            const Expanded(
              child: TabBarView(
                children: [
                  AllBlogs(),
                  FavoriteBlogs(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

enum CurrentTab { blogs, favorite }
