import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/user_actions.dart';

class ProfileViewModel extends Equatable {
  const ProfileViewModel({
    required this.phone,
    required this.walletAddress,
    required this.displayName,
    required this.seedPhrase,
    required this.editAvatar,
    required this.avatarUrl,
    required this.updateDisplayName,
  });

  factory ProfileViewModel.fromStore(Store<AppState> store) {
    return ProfileViewModel(
      displayName: store.state.userState.displayName,
      phone: store.state.userState.phoneNumber,
      avatarUrl: store.state.userState.avatarUrl,
      seedPhrase: store.state.userState.mnemonic,
      walletAddress: store.state.userState.walletAddress,
      editAvatar: (source) {
        store.dispatch(updateUserAvatarCall(source));
      },
      updateDisplayName: (displayName) {
        store.dispatch(updateDisplayNameCall(displayName));
      },
    );
  }

  final String phone;
  final String walletAddress;
  final String avatarUrl;
  final String displayName;
  final List<String> seedPhrase;
  final void Function(String displayName) updateDisplayName;
  final void Function(ImageSource source) editAvatar;

  @override
  List<Object> get props => [
        walletAddress,
        phone,
        displayName,
        avatarUrl,
      ];
}
