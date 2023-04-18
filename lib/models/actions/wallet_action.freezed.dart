// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletAction _$WalletActionFromJson(Map<String, dynamic> json) {
  switch (json['name']) {
    case 'tokenBonus':
      return Bonus.fromJson(json);
    case 'sendTokens':
      return Send.fromJson(json);
    case 'fiat-deposit':
      return FiatDeposit.fromJson(json);
    case 'createWallet':
      return CreateWallet.fromJson(json);
    case 'swapTokens':
      return Swap.fromJson(json);
    case 'receiveTokens':
      return Receive.fromJson(json);
    case 'receiveNFT':
      return ReceiveNFT.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'name', 'WalletAction',
          'Invalid union type "${json['name']}"!');
  }
}

/// @nodoc
mixin _$WalletAction {
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get txHash => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletActionCopyWith<WalletAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletActionCopyWith<$Res> {
  factory $WalletActionCopyWith(
          WalletAction value, $Res Function(WalletAction) then) =
      _$WalletActionCopyWithImpl<$Res, WalletAction>;
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber});
}

/// @nodoc
class _$WalletActionCopyWithImpl<$Res, $Val extends WalletAction>
    implements $WalletActionCopyWith<$Res> {
  _$WalletActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BonusCopyWith<$Res> implements $WalletActionCopyWith<$Res> {
  factory _$$BonusCopyWith(_$Bonus value, $Res Function(_$Bonus) then) =
      __$$BonusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String? from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal,
      String? bonusType});
}

/// @nodoc
class __$$BonusCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$Bonus>
    implements _$$BonusCopyWith<$Res> {
  __$$BonusCopyWithImpl(_$Bonus _value, $Res Function(_$Bonus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = freezed,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
    Object? bonusType = freezed,
  }) {
    return _then(_$Bonus(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
      bonusType: freezed == bonusType
          ? _value.bonusType
          : bonusType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bonus extends Bonus with DiagnosticableTreeMixin {
  const _$Bonus(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'tokenBonus',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal,
      this.bonusType})
      : super._();

  factory _$Bonus.fromJson(Map<String, dynamic> json) => _$$BonusFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String tokenAddress;
  @override
  final String? from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;
  @override
  final String? bonusType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.bonus(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal, bonusType: $bonusType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.bonus'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal))
      ..add(DiagnosticsProperty('bonusType', bonusType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bonus &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal) &&
            (identical(other.bonusType, bonusType) ||
                other.bonusType == bonusType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal,
      bonusType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusCopyWith<_$Bonus> get copyWith =>
      __$$BonusCopyWithImpl<_$Bonus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return bonus(timestamp, id, name, txHash, status, blockNumber, tokenAddress,
        from, to, value, tokenName, tokenSymbol, tokenDecimal, bonusType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return bonus?.call(
        timestamp,
        id,
        name,
        txHash,
        status,
        blockNumber,
        tokenAddress,
        from,
        to,
        value,
        tokenName,
        tokenSymbol,
        tokenDecimal,
        bonusType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (bonus != null) {
      return bonus(
          timestamp,
          id,
          name,
          txHash,
          status,
          blockNumber,
          tokenAddress,
          from,
          to,
          value,
          tokenName,
          tokenSymbol,
          tokenDecimal,
          bonusType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return bonus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return bonus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (bonus != null) {
      return bonus(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BonusToJson(
      this,
    );
  }
}

abstract class Bonus extends WalletAction {
  const factory Bonus(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      final String? from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal,
      final String? bonusType}) = _$Bonus;
  const Bonus._() : super._();

  factory Bonus.fromJson(Map<String, dynamic> json) = _$Bonus.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  String get tokenAddress;
  String? get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;
  String? get bonusType;
  @override
  @JsonKey(ignore: true)
  _$$BonusCopyWith<_$Bonus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCopyWith<$Res> implements $WalletActionCopyWith<$Res> {
  factory _$$SendCopyWith(_$Send value, $Res Function(_$Send) then) =
      __$$SendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$SendCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$Send>
    implements _$$SendCopyWith<$Res> {
  __$$SendCopyWithImpl(_$Send _value, $Res Function(_$Send) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$Send(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Send extends Send with DiagnosticableTreeMixin {
  const _$Send(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'sendTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$Send.fromJson(Map<String, dynamic> json) => _$$SendFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.send(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.send'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Send &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCopyWith<_$Send> get copyWith =>
      __$$SendCopyWithImpl<_$Send>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return send(timestamp, id, name, txHash, status, blockNumber, tokenAddress,
        from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return send?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendToJson(
      this,
    );
  }
}

abstract class Send extends WalletAction {
  const factory Send(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$Send;
  const Send._() : super._();

  factory Send.fromJson(Map<String, dynamic> json) = _$Send.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;
  @override
  @JsonKey(ignore: true)
  _$$SendCopyWith<_$Send> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FiatDepositCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$FiatDepositCopyWith(
          _$FiatDeposit value, $Res Function(_$FiatDeposit) then) =
      __$$FiatDepositCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String? from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$FiatDepositCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$FiatDeposit>
    implements _$$FiatDepositCopyWith<$Res> {
  __$$FiatDepositCopyWithImpl(
      _$FiatDeposit _value, $Res Function(_$FiatDeposit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = freezed,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$FiatDeposit(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FiatDeposit extends FiatDeposit with DiagnosticableTreeMixin {
  const _$FiatDeposit(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'fiat-deposit',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$FiatDeposit.fromJson(Map<String, dynamic> json) =>
      _$$FiatDepositFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String tokenAddress;
  @override
  final String? from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.fiatDeposit(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.fiatDeposit'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiatDeposit &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FiatDepositCopyWith<_$FiatDeposit> get copyWith =>
      __$$FiatDepositCopyWithImpl<_$FiatDeposit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return fiatDeposit(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return fiatDeposit?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (fiatDeposit != null) {
      return fiatDeposit(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return fiatDeposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return fiatDeposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (fiatDeposit != null) {
      return fiatDeposit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FiatDepositToJson(
      this,
    );
  }
}

abstract class FiatDeposit extends WalletAction {
  const factory FiatDeposit(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      final String? from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$FiatDeposit;
  const FiatDeposit._() : super._();

  factory FiatDeposit.fromJson(Map<String, dynamic> json) =
      _$FiatDeposit.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  String get tokenAddress;
  String? get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;
  @override
  @JsonKey(ignore: true)
  _$$FiatDepositCopyWith<_$FiatDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateWalletCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$CreateWalletCopyWith(
          _$CreateWallet value, $Res Function(_$CreateWallet) then) =
      __$$CreateWalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber});
}

/// @nodoc
class __$$CreateWalletCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$CreateWallet>
    implements _$$CreateWalletCopyWith<$Res> {
  __$$CreateWalletCopyWithImpl(
      _$CreateWallet _value, $Res Function(_$CreateWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
  }) {
    return _then(_$CreateWallet(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWallet extends CreateWallet with DiagnosticableTreeMixin {
  const _$CreateWallet(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'createWallet',
      this.txHash,
      required this.status,
      this.blockNumber = 0})
      : super._();

  factory _$CreateWallet.fromJson(Map<String, dynamic> json) =>
      _$$CreateWalletFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.createWallet(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.createWallet'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWallet &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, id, name, txHash, status, blockNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletCopyWith<_$CreateWallet> get copyWith =>
      __$$CreateWalletCopyWithImpl<_$CreateWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return createWallet(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return createWallet?.call(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(timestamp, id, name, txHash, status, blockNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return createWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return createWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWalletToJson(
      this,
    );
  }
}

abstract class CreateWallet extends WalletAction {
  const factory CreateWallet(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber}) = _$CreateWallet;
  const CreateWallet._() : super._();

  factory CreateWallet.fromJson(Map<String, dynamic> json) =
      _$CreateWallet.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  @JsonKey(ignore: true)
  _$$CreateWalletCopyWith<_$CreateWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapCopyWith<$Res> implements $WalletActionCopyWith<$Res> {
  factory _$$SwapCopyWith(_$Swap value, $Res Function(_$Swap) then) =
      __$$SwapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      @JsonKey(name: 'metadata') Trade? tradeInfo});

  $TradeCopyWith<$Res>? get tradeInfo;
}

/// @nodoc
class __$$SwapCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$Swap>
    implements _$$SwapCopyWith<$Res> {
  __$$SwapCopyWithImpl(_$Swap _value, $Res Function(_$Swap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tradeInfo = freezed,
  }) {
    return _then(_$Swap(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tradeInfo: freezed == tradeInfo
          ? _value.tradeInfo
          : tradeInfo // ignore: cast_nullable_to_non_nullable
              as Trade?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TradeCopyWith<$Res>? get tradeInfo {
    if (_value.tradeInfo == null) {
      return null;
    }

    return $TradeCopyWith<$Res>(_value.tradeInfo!, (value) {
      return _then(_value.copyWith(tradeInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Swap extends Swap with DiagnosticableTreeMixin {
  const _$Swap(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'swapTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      @JsonKey(name: 'metadata') this.tradeInfo})
      : super._();

  factory _$Swap.fromJson(Map<String, dynamic> json) => _$$SwapFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  @JsonKey(name: 'metadata')
  final Trade? tradeInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.swap(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tradeInfo: $tradeInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.swap'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tradeInfo', tradeInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Swap &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tradeInfo, tradeInfo) ||
                other.tradeInfo == tradeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, id, name, txHash, status, blockNumber, tradeInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapCopyWith<_$Swap> get copyWith =>
      __$$SwapCopyWithImpl<_$Swap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return swap(timestamp, id, name, txHash, status, blockNumber, tradeInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return swap?.call(
        timestamp, id, name, txHash, status, blockNumber, tradeInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(timestamp, id, name, txHash, status, blockNumber, tradeInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapToJson(
      this,
    );
  }
}

abstract class Swap extends WalletAction {
  const factory Swap(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      @JsonKey(name: 'metadata') final Trade? tradeInfo}) = _$Swap;
  const Swap._() : super._();

  factory Swap.fromJson(Map<String, dynamic> json) = _$Swap.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @JsonKey(name: 'metadata')
  Trade? get tradeInfo;
  @override
  @JsonKey(ignore: true)
  _$$SwapCopyWith<_$Swap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveCopyWith<$Res> implements $WalletActionCopyWith<$Res> {
  factory _$$ReceiveCopyWith(_$Receive value, $Res Function(_$Receive) then) =
      __$$ReceiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$ReceiveCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$Receive>
    implements _$$ReceiveCopyWith<$Res> {
  __$$ReceiveCopyWithImpl(_$Receive _value, $Res Function(_$Receive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$Receive(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Receive extends Receive with DiagnosticableTreeMixin {
  const _$Receive(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'receiveTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$Receive.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.receive(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.receive'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Receive &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveCopyWith<_$Receive> get copyWith =>
      __$$ReceiveCopyWithImpl<_$Receive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return receive(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return receive?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveToJson(
      this,
    );
  }
}

abstract class Receive extends WalletAction {
  const factory Receive(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$Receive;
  const Receive._() : super._();

  factory Receive.fromJson(Map<String, dynamic> json) = _$Receive.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveCopyWith<_$Receive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveNFTCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$ReceiveNFTCopyWith(
          _$ReceiveNFT value, $Res Function(_$ReceiveNFT) then) =
      __$$ReceiveNFTCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$ReceiveNFTCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$ReceiveNFT>
    implements _$$ReceiveNFTCopyWith<$Res> {
  __$$ReceiveNFTCopyWithImpl(
      _$ReceiveNFT _value, $Res Function(_$ReceiveNFT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$ReceiveNFT(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveNFT extends ReceiveNFT with DiagnosticableTreeMixin {
  const _$ReceiveNFT(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'receiveNFT',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$ReceiveNFT.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveNFTFromJson(json);

  @override
  @JsonKey()
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletAction.receiveNFT(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletAction.receiveNFT'))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveNFT &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveNFTCopyWith<_$ReceiveNFT> get copyWith =>
      __$$ReceiveNFTCopyWithImpl<_$ReceiveNFT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)
        bonus,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal) receiveNFT,
  }) {
    return receiveNFT(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
  }) {
    return receiveNFT?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal,
            String? bonusType)?
        bonus,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            @JsonKey(name: 'metadata') Trade? tradeInfo)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id, String name, String? txHash, String status, int? blockNumber, String tokenAddress, String from, String to, String tokenName, String tokenSymbol, int tokenDecimal)? receiveNFT,
    required TResult orElse(),
  }) {
    if (receiveNFT != null) {
      return receiveNFT(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Bonus value) bonus,
    required TResult Function(Send value) send,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(Swap value) swap,
    required TResult Function(Receive value) receive,
    required TResult Function(ReceiveNFT value) receiveNFT,
  }) {
    return receiveNFT(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Bonus value)? bonus,
    TResult? Function(Send value)? send,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(Swap value)? swap,
    TResult? Function(Receive value)? receive,
    TResult? Function(ReceiveNFT value)? receiveNFT,
  }) {
    return receiveNFT?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Bonus value)? bonus,
    TResult Function(Send value)? send,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(Swap value)? swap,
    TResult Function(Receive value)? receive,
    TResult Function(ReceiveNFT value)? receiveNFT,
    required TResult orElse(),
  }) {
    if (receiveNFT != null) {
      return receiveNFT(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveNFTToJson(
      this,
    );
  }
}

abstract class ReceiveNFT extends WalletAction {
  const factory ReceiveNFT(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$ReceiveNFT;
  const ReceiveNFT._() : super._();

  factory ReceiveNFT.fromJson(Map<String, dynamic> json) =
      _$ReceiveNFT.fromJson;

  @override
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  String get tokenAddress;
  String get from;
  String get to;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveNFTCopyWith<_$ReceiveNFT> get copyWith =>
      throw _privateConstructorUsedError;
}
