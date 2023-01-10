import 'dart:io';

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;
import 'package:vegan_liverpool/constants/addresses.dart';
import 'package:vegan_liverpool/models/actions/actions.dart';
import 'package:vegan_liverpool/models/tokens/token.dart';

//TODO: Move to constants

const String wethTokenAddress = '0xa722c13135930332eb3d749b2f0906559d2c5b99';
const String wbtcTokenAddress = '0x33284f95ccb7b948d9d352e1439561cf83d8d00d';
const String wfuseTokenAddress = '0x0be9e53fd7edac9f859882afdda116645287c629';

final Token fuseToken = Token(
  name: 'Fuse',
  symbol: 'FUSE',
  imageUrl: 'https://fuselogo.s3.eu-central-1.amazonaws.com/fuse-token.png',
  decimals: 18,
  address: Addresses.zeroAddress,
  isNative: true,
  timestamp: 0,
  amount: BigInt.zero,
  walletActions: WalletActions.initial(),
);

final Token gbpxToken = Token(
  name: 'GBPx',
  symbol: 'GBPX',
  // imageUrl: "https://fuselogo.s3.eu-central-1.amazonaws.com/fuse-dollar.png",
  decimals: 18,
  address: Addresses.gbpxTokenAddress,
  timestamp: 0,
  amount: BigInt.zero,
  walletActions: WalletActions.initial(),
);

final Token pplToken = Token(
  name: 'Peepl',
  symbol: 'PPL',
  // imageUrl: 'https://fuselogo.s3.eu-central-1.amazonaws.com/fuse-token.png',
  decimals: 18,
  address: Addresses.pplTokenAddress,
  isNative: false,
  timestamp: 0,
  amount: BigInt.zero,
  walletActions: WalletActions.initial(),
);

final Token fuseDollarToken = Token(
  name: 'Fuse Dollar',
  symbol: 'fUSD',
  imageUrl: 'https://fuselogo.s3.eu-central-1.amazonaws.com/fuse-dollar.png',
  decimals: 18,
  address: Addresses.fusdTokenAddress,
  timestamp: 0,
  amount: BigInt.zero,
  walletActions: WalletActions.initial(),
);

const EMAIL_NOT_PROVIDED = 'email@notprovided.com';

const VEGI_BASE_URL = 'https://vegiapp.co.uk';
const VEGI_PRIVACY_URL = '$VEGI_BASE_URL/privacy';
const VEGI_CONTACT_US_URL = '$VEGI_BASE_URL/contact';
const VEGI_TIKTOK_HANDLE = '@vegi_app';
const VEGI_TIKTOK_PROFILE_URL = 'https://vm.tiktok.com/ZMNF3ekHX/';
const VEGI_INSTA_HANDLE = 'wearevegi';
const VEGI_INSTA_PROFILE_URL = 'https://www.instagram.com/wearevegi/';

// const THE_GUIDE_LIVERPOOL_IOS_LINK = 'https://apps.apple.com/app/id1600049497';
// const THE_GUIDE_LIVERPOOL_GOOGLEPS_LINK =
//     'https://play.google.com/store/apps/details?id=com.theguideliverpool.theguideapp';
const THE_GUIDE_LIVERPOOL_LINKTREE = 'https://qrco.de/bdNuyp';
const THE_GUIDE_LIVERPOOL_IOS_LINK = THE_GUIDE_LIVERPOOL_LINKTREE;
const THE_GUIDE_LIVERPOOL_GOOGLEPS_LINK = THE_GUIDE_LIVERPOOL_LINKTREE;
const VEGI_SUPPORT_PHONE_NUMBER = '+447917787967';
const VEGI_SUPPORT_EMAIL = 'support@vegi.co.uk';

String getGuideLiverpoolLink() {
  return 'https://qrco.de/bdNuyp';
  // return Platform.isIOS
  //     ? THE_GUIDE_LIVERPOOL_IOS_LINK
  //     : THE_GUIDE_LIVERPOOL_GOOGLEPS_LINK;
}

class Messages {
  static const String email = 'Email Address';
  static const String enterEmail =
      'Please enter your email to be first to receive an update when we launch.';

  static const String createNewAccount = 'New Account';

  static const String invalidEmail = 'Invalid Email';
  static const String newSupportRequestSubjectHeader = 'New Support Request';
  static const String thanksForRegisteringEmailWaitList =
      'Thank you for registering with vegi 💚';
  static const String signUpForTheGuideToAccessTheBeta =
      'Sign up to the pre-release version of vegi via The Guide Liverpool';
  static const String byRegisteringEmailWaitListReason =
      "By registering, you'll be the first to know when we launch.";
  static const String unsubscribeAtAnyTime =
      'You can unsubscribe any time, no funny business.';
}

const ENV = String.fromEnvironment('ENV', defaultValue: 'production');
const USE_FIREBASE_EMULATOR =
    String.fromEnvironment('USE_FIREBASE_EMULATOR', defaultValue: 'false');
