import 'package:charge_wallet_sdk/charge_wallet_sdk.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:vegan_liverpool/common/di/di.dart';
import 'package:vegan_liverpool/common/router/route_guards.dart';
import 'package:vegan_liverpool/common/router/routes.dart';

@module
abstract class ServicesModule {
  @lazySingleton
  Graph get graph => Graph();

  @lazySingleton
  ChargeApi get chargeApi => ChargeApi(
        dotenv.env['CHARGE_API_KEY']!,
      );

  @lazySingleton
  RootRouter get rootRouter => RootRouter(
        authGuard: AuthGuard(),
      );

  @lazySingleton
  FuseExplorer get fuseExplorerAPI => FuseExplorer(
        getIt<Dio>(),
      );
}
