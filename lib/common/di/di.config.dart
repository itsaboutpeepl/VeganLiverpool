// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_core/firebase_core.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i12;
import 'package:package_info/package_info.dart' as _i14;
import 'package:phone_number/phone_number.dart' as _i17;
import 'package:wallet_core/wallet_core.dart' as _i10;

import '../../services/apis/explorer.dart' as _i4;
import '../../services/apis/fuseswap.dart' as _i9;
import '../../services/apis/market.dart' as _i13;
import '../../services/apis/peeplEats.dart' as _i15;
import '../../services/apis/peeplPay.dart' as _i16;
import '../../services/apis/stripePay.dart' as _i19;
import '../../utils/auth/wallet_api_auth_layer.dart' as _i5;
import '../../utils/log/log_it.dart' as _i21;
import '../../utils/onboard/Istrategy.dart' as _i11;
import '../../utils/stripe.dart' as _i20;
import '../network/services.dart' as _i23;
import '../router/routes.dart' as _i18;
import 'dio.dart' as _i22;
import 'firebase.dart' as _i24;
import 'logger_di.dart' as _i26;
import 'onboard.dart' as _i25;
import 'package_info.dart' as _i27;
import 'phone.dart' as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  final servicesModule = _$ServicesModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final onBoardStrategy = _$OnBoardStrategy();
  final loggerDi = _$LoggerDi();
  final packageInfoDi = _$PackageInfoDi();
  final phone = _$Phone();
  gh.factory<_i3.Dio>(() => dioDi.dio);
  gh.factoryParam<_i4.Explorer, String?, String?>(
      (base, apiKey) => _i4.Explorer(get<_i3.Dio>(), base, apiKey));
  gh.lazySingleton<_i5.FUSEWalletApiLayer>(
      () => servicesModule.fUSEWalletApiLayer);
  await gh.factoryAsync<_i6.FirebaseApp>(
      () => firebaseInjectableModule.firebaseApp,
      preResolve: true);
  gh.lazySingleton<_i7.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<_i9.FuseSwapService>(
      () => _i9.FuseSwapService(get<_i3.Dio>()));
  gh.lazySingleton<_i10.Graph>(() => servicesModule.graph);
  gh.lazySingleton<_i11.IOnBoardStrategy>(
      () => onBoardStrategy.onBoardStrategy);
  gh.lazySingleton<_i12.Logger>(() => loggerDi.logger);
  gh.lazySingleton<_i13.Market>(() => _i13.Market(get<_i3.Dio>()));
  await gh.factoryAsync<_i14.PackageInfo>(() => packageInfoDi.packageInfo,
      preResolve: true);
  gh.lazySingleton<_i15.PeeplEatsService>(
      () => _i15.PeeplEatsService(get<_i3.Dio>()));
  gh.lazySingleton<_i16.PeeplPaySerivce>(
      () => _i16.PeeplPaySerivce(get<_i3.Dio>()));
  gh.lazySingleton<_i17.PhoneNumberUtil>(() => phone.phoneNumberUtil);
  gh.singleton<_i18.RootRouter>(servicesModule.rootRouter);
  gh.lazySingleton<_i19.StripePayService>(
      () => _i19.StripePayService(get<_i3.Dio>()));
  gh.lazySingleton<_i20.StripeService>(() => _i20.StripeService());
  gh.lazySingleton<_i10.StudioApi>(() => servicesModule.api);
  gh.lazySingleton<_i10.WalletApi>(() => servicesModule.walletApi);
  gh.factory<bool>(
      () => firebaseInjectableModule.assertTopicNameIsValid(get<String>()));
  gh.lazySingleton<_i21.LogIt>(() => _i21.LogIt(get<_i12.Logger>()));
  return get;
}

class _$DioDi extends _i22.DioDi {}

class _$ServicesModule extends _i23.ServicesModule {}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}

class _$OnBoardStrategy extends _i25.OnBoardStrategy {}

class _$LoggerDi extends _i26.LoggerDi {}

class _$PackageInfoDi extends _i27.PackageInfoDi {}

class _$Phone extends _i28.Phone {}
