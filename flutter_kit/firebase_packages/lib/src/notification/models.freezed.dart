// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlutterKitRemoteNotification {
  String? get triggerID => throw _privateConstructorUsedError;
  String? get navigation => throw _privateConstructorUsedError;
  bool get isBackground => throw _privateConstructorUsedError;

  /// Create a copy of FlutterKitRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlutterKitRemoteNotificationCopyWith<FlutterKitRemoteNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterKitRemoteNotificationCopyWith<$Res> {
  factory $FlutterKitRemoteNotificationCopyWith(
          FlutterKitRemoteNotification value,
          $Res Function(FlutterKitRemoteNotification) then) =
      _$FlutterKitRemoteNotificationCopyWithImpl<$Res,
          FlutterKitRemoteNotification>;
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class _$FlutterKitRemoteNotificationCopyWithImpl<$Res,
        $Val extends FlutterKitRemoteNotification>
    implements $FlutterKitRemoteNotificationCopyWith<$Res> {
  _$FlutterKitRemoteNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlutterKitRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerID = freezed,
    Object? navigation = freezed,
    Object? isBackground = null,
  }) {
    return _then(_value.copyWith(
      triggerID: freezed == triggerID
          ? _value.triggerID
          : triggerID // ignore: cast_nullable_to_non_nullable
              as String?,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: null == isBackground
          ? _value.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlutterKitRemoteNotificationImplCopyWith<$Res>
    implements $FlutterKitRemoteNotificationCopyWith<$Res> {
  factory _$$FlutterKitRemoteNotificationImplCopyWith(
          _$FlutterKitRemoteNotificationImpl value,
          $Res Function(_$FlutterKitRemoteNotificationImpl) then) =
      __$$FlutterKitRemoteNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class __$$FlutterKitRemoteNotificationImplCopyWithImpl<$Res>
    extends _$FlutterKitRemoteNotificationCopyWithImpl<$Res,
        _$FlutterKitRemoteNotificationImpl>
    implements _$$FlutterKitRemoteNotificationImplCopyWith<$Res> {
  __$$FlutterKitRemoteNotificationImplCopyWithImpl(
      _$FlutterKitRemoteNotificationImpl _value,
      $Res Function(_$FlutterKitRemoteNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlutterKitRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerID = freezed,
    Object? navigation = freezed,
    Object? isBackground = null,
  }) {
    return _then(_$FlutterKitRemoteNotificationImpl(
      triggerID: freezed == triggerID
          ? _value.triggerID
          : triggerID // ignore: cast_nullable_to_non_nullable
              as String?,
      navigation: freezed == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: null == isBackground
          ? _value.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FlutterKitRemoteNotificationImpl extends _FlutterKitRemoteNotification {
  const _$FlutterKitRemoteNotificationImpl(
      {required this.triggerID,
      required this.navigation,
      required this.isBackground})
      : super._();

  @override
  final String? triggerID;
  @override
  final String? navigation;
  @override
  final bool isBackground;

  @override
  String toString() {
    return 'FlutterKitRemoteNotification(triggerID: $triggerID, navigation: $navigation, isBackground: $isBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlutterKitRemoteNotificationImpl &&
            (identical(other.triggerID, triggerID) ||
                other.triggerID == triggerID) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation) &&
            (identical(other.isBackground, isBackground) ||
                other.isBackground == isBackground));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, triggerID, navigation, isBackground);

  /// Create a copy of FlutterKitRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlutterKitRemoteNotificationImplCopyWith<
          _$FlutterKitRemoteNotificationImpl>
      get copyWith => __$$FlutterKitRemoteNotificationImplCopyWithImpl<
          _$FlutterKitRemoteNotificationImpl>(this, _$identity);
}

abstract class _FlutterKitRemoteNotification
    extends FlutterKitRemoteNotification {
  const factory _FlutterKitRemoteNotification(
      {required final String? triggerID,
      required final String? navigation,
      required final bool isBackground}) = _$FlutterKitRemoteNotificationImpl;
  const _FlutterKitRemoteNotification._() : super._();

  @override
  String? get triggerID;
  @override
  String? get navigation;
  @override
  bool get isBackground;

  /// Create a copy of FlutterKitRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlutterKitRemoteNotificationImplCopyWith<
          _$FlutterKitRemoteNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
