import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/features/guideNews/widgets/categoryArticlesList.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/news_actions.dart';
import 'package:vegan_liverpool/redux/viewsmodels/newsScreen.dart';

List<String> randomQueries = [
  'business',
  "entertainment",
  "general",
  "health",
  "science",
  "sports",
  "technology"
];

final random = new Random();

String getRandomQuery() =>
    randomQueries[random.nextInt(randomQueries.length - 1)];

class NewsScreen extends StatefulWidget {
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewsScreenViewModel>(
      distinct: true,
      onInit: (store) => {
        store.dispatch(UpdateCurrentTabIndex(currentTabIndex: 0)),
        store.dispatch(fetchCategoryNames()),
        store.dispatch(
          updateCurrentTabList(
            query: getRandomQuery(),
          ),
        ),
        _tabController = TabController(
            length: store.state.newsState.categoryNames.length, vsync: this),
        _tabController.addListener(() {
          if (_tabController.indexIsChanging) {
            store.dispatch(
                UpdateCurrentTabIndex(currentTabIndex: _tabController.index));
            store.dispatch(updateCurrentTabList(
              query: getRandomQuery(),
            ));
          }
        })
      },
      converter: NewsScreenViewModel.fromStore,
      builder: (_, viewmodel) => Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                tabs: viewmodel.tabNames
                    .map(
                      (String tabName) => Tab(
                        child: Text(tabName),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children:
                viewmodel.articles.map((e) => CategoryArticlesList()).toList()),
      ),
    );
  }
}
