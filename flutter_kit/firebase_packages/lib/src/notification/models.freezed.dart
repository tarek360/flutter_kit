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
mixin _$LougaRemoteNotification {
  String? get triggerID => throw _privateConstructorUsedError;
  String? get navigation => throw _privateConstructorUsedError;
  bool get isBackground => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LougaRemoteNotificationCopyWith<LougaRemoteNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LougaRemoteNotificationCopyWith<$Res> {
  factory $LougaRemoteNotificationCopyWith(LougaRemoteNotification value,
          $Res Function(LougaRemoteNotification) then) =
      _$LougaRemoteNotificationCopyWithImpl<$Res, LougaRemoteNotification>;
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class _$LougaRemoteNotificationCopyWithImpl<$Res,
        $Val extends LougaRemoteNotification>
    implements $LougaRemoteNotificationCopyWith<$Res> {
  _$LougaRemoteNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$LougaRemoteNotificationImplCopyWith<$Res>
    implements $LougaRemoteNotificationCopyWith<$Res> {
  factory _$$LougaRemoteNotificationImplCopyWith(
          _$LougaRemoteNotificationImpl value,
          $Res Function(_$LougaRemoteNotificationImpl) then) =
      __$$LougaRemoteNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class __$$LougaRemoteNotificationImplCopyWithImpl<$Res>
    extends _$LougaRemoteNotificationCopyWithImpl<$Res,
        _$LougaRemoteNotificationImpl>
    implements _$$LougaRemoteNotificationImplCopyWith<$Res> {
  __$$LougaRemoteNotificationImplCopyWithImpl(
      _$LougaRemoteNotificationImpl _value,
      $Res Function(_$LougaRemoteNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerID = freezed,
    Object? navigation = freezed,
    Object? isBackground = null,
  }) {
    return _then(_$LougaRemoteNotificationImpl(
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

class _$LougaRemoteNotificationImpl extends _LougaRemoteNotification {
  const _$LougaRemoteNotificationImpl(
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
    return 'LougaRemoteNotification(triggerID: $triggerID, navigation: $navigation, isBackground: $isBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LougaRemoteNotificationImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LougaRemoteNotificationImplCopyWith<_$LougaRemoteNotificationImpl>
      get copyWith => __$$LougaRemoteNotificationImplCopyWithImpl<
          _$LougaRemoteNotificationImpl>(this, _$identity);
}

abstract class _LougaRemoteNotification extends LougaRemoteNotification {
  const factory _LougaRemoteNotification(
      {required final String? triggerID,
      required final String? navigation,
      required final bool isBackground}) = _$LougaRemoteNotificationImpl;
  const _LougaRemoteNotification._() : super._();

  @override
  String? get triggerID;
  @override
  String? get navigation;
  @override
  bool get isBackground;
  @override
  @JsonKey(ignore: true)
  _$$LougaRemoteNotificationImplCopyWith<_$LougaRemoteNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
