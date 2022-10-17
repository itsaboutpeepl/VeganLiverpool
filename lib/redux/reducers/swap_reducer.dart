// import 'package:vegan_liverpool/models/swap_state.dart';
// import 'package:vegan_liverpool/models/tokens/token.dart';
// import 'package:vegan_liverpool/redux/actions/swap_actions.dart';
// import 'package:redux/redux.dart';
// import 'package:vegan_liverpool/redux/actions/user_actions.dart';

// final swapReducers = combineReducers<SwapState>([
//   TypedReducer<SwapState, SetFetchingState>(_setFetchingState),
//   TypedReducer<SwapState, GetSwappableTokensSuccess>(
//       _getSwappableTokensSuccess),
//   TypedReducer<SwapState, GetTokensImagesSuccess>(_getTokensImagesSuccess),
//   TypedReducer<SwapState, ResetTokenList>(_resetTokenList),
//   TypedReducer<SwapState, UpdateTokenPrices>(_updateTokenPrices),
//   TypedReducer<SwapState, UpdateTokenBalance>(_updateTokenBalance),
//   TypedReducer<SwapState, CreateLocalAccountSuccess>(_createNewWalletSuccess),
// ]);

// SwapState _createNewWalletSuccess(
//   SwapState state,
//   CreateLocalAccountSuccess action,
// ) {
//   return SwapState(
//     tokensImages: state.tokensImages,
//   );
// }

// SwapState _setFetchingState(SwapState state, SetFetchingState action) {
//   return state.copyWith(
//     isFetching: action.isFetching,
//   );
// }

// SwapState _updateTokenPrices(SwapState state, UpdateTokenPrices action) {
//   Token cur = state.tokens[action.tokenAddress]!;
//   final Token token = state.tokens[action.tokenAddress]!.copyWith(
//     priceInfo: action.priceInfo ?? cur.priceInfo,
//   );
//   Map<String, Token> tokens = Map<String, Token>.from(state.tokens);
//   tokens[action.tokenAddress] = token.copyWith();
//   return state.copyWith(
//     tokens: tokens,
//   );
// }

// SwapState _updateTokenBalance(SwapState state, UpdateTokenBalance action) {
//   final Token token =
//       state.tokens[action.tokenAddress]!.copyWith(amount: action.balance);
//   Map<String, Token> tokens = Map<String, Token>.from(state.tokens);
//   tokens[action.tokenAddress] = token.copyWith();
//   return state.copyWith(
//     tokens: tokens,
//   );
// }

// SwapState _resetTokenList(SwapState state, ResetTokenList action) {
//   return state.copyWith(
//     tokens: {},
//   );
// }

// SwapState _getSwappableTokensSuccess(
//     SwapState state, GetSwappableTokensSuccess action) {
//   return state.copyWith(
//     tokens: action.swappableTokens,
//   );
// }

// SwapState _getTokensImagesSuccess(
//     SwapState state, GetTokensImagesSuccess action) {
//   Map<String, String> newOne = {};
//   for (String tokenAddress in action.tokensImages.keys) {
//     if (!state.tokensImages.containsKey(tokenAddress)) {
//       newOne[tokenAddress] = action.tokensImages[tokenAddress]!;
//     } else if (state.tokensImages.containsKey(tokenAddress) &&
//         state.tokensImages[tokenAddress] != action.tokensImages[tokenAddress]) {
//       newOne[tokenAddress] = action.tokensImages[tokenAddress]!;
//     }
//   }
//   if (newOne.isEmpty) {
//     return state;
//   }
//   Map<String, String> tokensImages =
//       Map<String, String>.from(state.tokensImages)..addAll(newOne);
//   return state.copyWith(
//     tokensImages: tokensImages,
//   );
// }
