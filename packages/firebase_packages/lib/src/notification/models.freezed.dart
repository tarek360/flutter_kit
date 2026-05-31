// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LougaRemoteNotification {
  String? get triggerID;
  String? get navigation;
  bool get isBackground;

  /// Create a copy of LougaRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LougaRemoteNotificationCopyWith<LougaRemoteNotification> get copyWith =>
      _$LougaRemoteNotificationCopyWithImpl<LougaRemoteNotification>(
          this as LougaRemoteNotification, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LougaRemoteNotification &&
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

  @override
  String toString() {
    return 'LougaRemoteNotification(triggerID: $triggerID, navigation: $navigation, isBackground: $isBackground)';
  }
}

/// @nodoc
abstract mixin class $LougaRemoteNotificationCopyWith<$Res> {
  factory $LougaRemoteNotificationCopyWith(LougaRemoteNotification value,
          $Res Function(LougaRemoteNotification) _then) =
      _$LougaRemoteNotificationCopyWithImpl;
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class _$LougaRemoteNotificationCopyWithImpl<$Res>
    implements $LougaRemoteNotificationCopyWith<$Res> {
  _$LougaRemoteNotificationCopyWithImpl(this._self, this._then);

  final LougaRemoteNotification _self;
  final $Res Function(LougaRemoteNotification) _then;

  /// Create a copy of LougaRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerID = freezed,
    Object? navigation = freezed,
    Object? isBackground = null,
  }) {
    return _then(_self.copyWith(
      triggerID: freezed == triggerID
          ? _self.triggerID
          : triggerID // ignore: cast_nullable_to_non_nullable
              as String?,
      navigation: freezed == navigation
          ? _self.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: null == isBackground
          ? _self.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [LougaRemoteNotification].
extension LougaRemoteNotificationPatterns on LougaRemoteNotification {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LougaRemoteNotification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LougaRemoteNotification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LougaRemoteNotification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? triggerID, String? navigation, bool isBackground)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification() when $default != null:
        return $default(_that.triggerID, _that.navigation, _that.isBackground);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? triggerID, String? navigation, bool isBackground)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification():
        return $default(_that.triggerID, _that.navigation, _that.isBackground);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? triggerID, String? navigation, bool isBackground)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LougaRemoteNotification() when $default != null:
        return $default(_that.triggerID, _that.navigation, _that.isBackground);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LougaRemoteNotification extends LougaRemoteNotification {
  const _LougaRemoteNotification(
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

  /// Create a copy of LougaRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LougaRemoteNotificationCopyWith<_LougaRemoteNotification> get copyWith =>
      __$LougaRemoteNotificationCopyWithImpl<_LougaRemoteNotification>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LougaRemoteNotification &&
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

  @override
  String toString() {
    return 'LougaRemoteNotification(triggerID: $triggerID, navigation: $navigation, isBackground: $isBackground)';
  }
}

/// @nodoc
abstract mixin class _$LougaRemoteNotificationCopyWith<$Res>
    implements $LougaRemoteNotificationCopyWith<$Res> {
  factory _$LougaRemoteNotificationCopyWith(_LougaRemoteNotification value,
          $Res Function(_LougaRemoteNotification) _then) =
      __$LougaRemoteNotificationCopyWithImpl;
  @override
  @useResult
  $Res call({String? triggerID, String? navigation, bool isBackground});
}

/// @nodoc
class __$LougaRemoteNotificationCopyWithImpl<$Res>
    implements _$LougaRemoteNotificationCopyWith<$Res> {
  __$LougaRemoteNotificationCopyWithImpl(this._self, this._then);

  final _LougaRemoteNotification _self;
  final $Res Function(_LougaRemoteNotification) _then;

  /// Create a copy of LougaRemoteNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? triggerID = freezed,
    Object? navigation = freezed,
    Object? isBackground = null,
  }) {
    return _then(_LougaRemoteNotification(
      triggerID: freezed == triggerID
          ? _self.triggerID
          : triggerID // ignore: cast_nullable_to_non_nullable
              as String?,
      navigation: freezed == navigation
          ? _self.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: null == isBackground
          ? _self.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
