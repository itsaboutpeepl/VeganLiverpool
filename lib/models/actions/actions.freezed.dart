// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletActions _$WalletActionsFromJson(Map<String, dynamic> json) {
  return _WalletActions.fromJson(json);
}

/// @nodoc
mixin _$WalletActions {
  List<WalletAction> get list => throw _privateConstructorUsedError;
  num get updatedAt => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletActionsCopyWith<WalletActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletActionsCopyWith<$Res> {
  factory $WalletActionsCopyWith(
          WalletActions value, $Res Function(WalletActions) then) =
      _$WalletActionsCopyWithImpl<$Res, WalletActions>;
  @useResult
  $Res call({List<WalletAction> list, num updatedAt, int currentPage});
}

/// @nodoc
class _$WalletActionsCopyWithImpl<$Res, $Val extends WalletActions>
    implements $WalletActionsCopyWith<$Res> {
  _$WalletActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? updatedAt = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WalletAction>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as num,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletActionsCopyWith<$Res>
    implements $WalletActionsCopyWith<$Res> {
  factory _$$_WalletActionsCopyWith(
          _$_WalletActions value, $Res Function(_$_WalletActions) then) =
      __$$_WalletActionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WalletAction> list, num updatedAt, int currentPage});
}

/// @nodoc
class __$$_WalletActionsCopyWithImpl<$Res>
    extends _$WalletActionsCopyWithImpl<$Res, _$_WalletActions>
    implements _$$_WalletActionsCopyWith<$Res> {
  __$$_WalletActionsCopyWithImpl(
      _$_WalletActions _value, $Res Function(_$_WalletActions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? updatedAt = null,
    Object? currentPage = null,
  }) {
    return _then(_$_WalletActions(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WalletAction>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as num,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletActions extends _WalletActions with DiagnosticableTreeMixin {
  _$_WalletActions(
      {this.list = const <WalletAction>[],
      this.updatedAt = 0,
      this.currentPage = 1})
      : super._();

  factory _$_WalletActions.fromJson(Map<String, dynamic> json) =>
      _$$_WalletActionsFromJson(json);

  @override
  @JsonKey()
  final List<WalletAction> list;
  @override
  @JsonKey()
  final num updatedAt;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletActions(list: $list, updatedAt: $updatedAt, currentPage: $currentPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletActions'))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('currentPage', currentPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletActions &&
            const DeepCollectionEquality().equals(other.list, list) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(list), updatedAt, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletActionsCopyWith<_$_WalletActions> get copyWith =>
      __$$_WalletActionsCopyWithImpl<_$_WalletActions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletActionsToJson(
      this,
    );
  }
}

abstract class _WalletActions extends WalletActions {
  factory _WalletActions(
      {final List<WalletAction> list,
      final num updatedAt,
      final int currentPage}) = _$_WalletActions;
  _WalletActions._() : super._();

  factory _WalletActions.fromJson(Map<String, dynamic> json) =
      _$_WalletActions.fromJson;

  @override
  List<WalletAction> get list;
  @override
  num get updatedAt;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_WalletActionsCopyWith<_$_WalletActions> get copyWith =>
      throw _privateConstructorUsedError;
}
