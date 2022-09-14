import 'package:flutter/material.dart';
import 'package:go_router_learn/blog/presentation/screens/favorite_blogs.dart';
import 'package:go_router_learn/blog/presentation/screens/list_all_blogs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Column(
          children: const [
            TabBar(tabs: [
              Tab(text: "All"),
              Tab(text: "Favorite"),
            ]),
            Expanded(
              child: TabBarView(children: [
                AllBlogs(),
                FavoriteBlogs(),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
