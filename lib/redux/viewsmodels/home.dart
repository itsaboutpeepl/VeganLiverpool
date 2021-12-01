import 'package:vegan_liverpool/utils/addresses.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/cash_wallet_actions.dart';

class HomeViewModel {
  final Function() onStart;

  HomeViewModel({
    required this.onStart,
  });

  static HomeViewModel fromStore(Store<AppState> store) {
    bool isCommunityLoading = store.state.cashWalletState.isCommunityLoading;
    final bool isCommunityFetched =
        store.state.cashWalletState.isCommunityFetched;
    final String walletAddress = store.state.userState.walletAddress;

    return HomeViewModel(
      onStart: () {
        if (store.state.cashWalletState.tokens.isEmpty &&
            !isCommunityLoading &&
            isCommunityFetched) {
          store.dispatch(switchCommunityCall(defaultCommunityAddress));
        }
        if (!isCommunityLoading &&
            !isCommunityFetched &&
            ![null, ''].contains(walletAddress)) {
          store.dispatch(refetchCommunityData());
        }
      },
    );
  }
}
