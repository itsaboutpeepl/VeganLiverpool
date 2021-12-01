import 'package:equatable/equatable.dart';
import 'package:peepl/features/guideNews/screens/newsScreen.dart';
import 'package:peepl/models/app_state.dart';
import 'package:peepl/models/articles/blogArticle.dart';
import 'package:peepl/redux/actions/news_actions.dart';
import 'package:redux/redux.dart';

class CategoryArticleListViewModel extends Equatable {
  final String tabName;
  final String tabID;
  final List<BlogArticle> articles;
  final bool isRefreshing;
  final void Function() refreshList;

  CategoryArticleListViewModel({
    required this.tabName,
    required this.tabID,
    required this.articles,
    required this.isRefreshing,
    required this.refreshList,
  });

  static CategoryArticleListViewModel fromStore(Store<AppState> store) {
    int currentTabIndex = store.state.newsState.currentTabIndex;
    return CategoryArticleListViewModel(
        tabName: store.state.newsState.articles[currentTabIndex].categoryName,
        tabID: store.state.newsState.articles[currentTabIndex].categoryID,
        articles: store.state.newsState.articles[currentTabIndex].articleList,
        isRefreshing: false,
        refreshList: () {
          store.dispatch(UpdateIsRefresh(isRefreshing: true));
          store.dispatch(updateCurrentTabList(query: getRandomQuery()));
        });
  }

  @override
  List<Object> get props => [tabName, tabID, articles, isRefreshing];
}
