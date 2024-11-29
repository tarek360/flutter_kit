// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageOutPaginationMetadata _$MessageOutPaginationMetadataFromJson(
    Map<String, dynamic> json) {
  return _MessageOutPaginationMetadata.fromJson(json);
}

/// @nodoc
mixin _$MessageOutPaginationMetadata {
  @JsonKey(name: 'TotalPages')
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageOutPaginationMetadataCopyWith<MessageOutPaginationMetadata>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageOutPaginationMetadataCopyWith<$Res> {
  factory $MessageOutPaginationMetadataCopyWith(
          MessageOutPaginationMetadata value,
          $Res Function(MessageOutPaginationMetadata) then) =
      _$MessageOutPaginationMetadataCopyWithImpl<$Res,
          MessageOutPaginationMetadata>;
  @useResult
  $Res call({@JsonKey(name: 'TotalPages') int totalPages});
}

/// @nodoc
class _$MessageOutPaginationMetadataCopyWithImpl<$Res,
        $Val extends MessageOutPaginationMetadata>
    implements $MessageOutPaginationMetadataCopyWith<$Res> {
  _$MessageOutPaginationMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageOutPaginationMetadataImplCopyWith<$Res>
    implements $MessageOutPaginationMetadataCopyWith<$Res> {
  factory _$$MessageOutPaginationMetadataImplCopyWith(
          _$MessageOutPaginationMetadataImpl value,
          $Res Function(_$MessageOutPaginationMetadataImpl) then) =
      __$$MessageOutPaginationMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'TotalPages') int totalPages});
}

/// @nodoc
class __$$MessageOutPaginationMetadataImplCopyWithImpl<$Res>
    extends _$MessageOutPaginationMetadataCopyWithImpl<$Res,
        _$MessageOutPaginationMetadataImpl>
    implements _$$MessageOutPaginationMetadataImplCopyWith<$Res> {
  __$$MessageOutPaginationMetadataImplCopyWithImpl(
      _$MessageOutPaginationMetadataImpl _value,
      $Res Function(_$MessageOutPaginationMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
  }) {
    return _then(_$MessageOutPaginationMetadataImpl(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageOutPaginationMetadataImpl
    implements _MessageOutPaginationMetadata {
  _$MessageOutPaginationMetadataImpl(
      {@JsonKey(name: 'TotalPages') this.totalPages = 1});

  factory _$MessageOutPaginationMetadataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MessageOutPaginationMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'TotalPages')
  final int totalPages;

  @override
  String toString() {
    return 'MessageOutPaginationMetadata(totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageOutPaginationMetadataImpl &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageOutPaginationMetadataImplCopyWith<
          _$MessageOutPaginationMetadataImpl>
      get copyWith => __$$MessageOutPaginationMetadataImplCopyWithImpl<
          _$MessageOutPaginationMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageOutPaginationMetadataImplToJson(
      this,
    );
  }
}

abstract class _MessageOutPaginationMetadata
    implements MessageOutPaginationMetadata {
  factory _MessageOutPaginationMetadata(
          {@JsonKey(name: 'TotalPages') final int totalPages}) =
      _$MessageOutPaginationMetadataImpl;

  factory _MessageOutPaginationMetadata.fromJson(Map<String, dynamic> json) =
      _$MessageOutPaginationMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'TotalPages')
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$MessageOutPaginationMetadataImplCopyWith<
          _$MessageOutPaginationMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaginationAndFilter {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String? get sort => throw _privateConstructorUsedError;
  String? get searchByName => throw _privateConstructorUsedError;
  String? get searchBy => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationAndFilterCopyWith<PaginationAndFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationAndFilterCopyWith<$Res> {
  factory $PaginationAndFilterCopyWith(
          PaginationAndFilter value, $Res Function(PaginationAndFilter) then) =
      _$PaginationAndFilterCopyWithImpl<$Res, PaginationAndFilter>;
  @useResult
  $Res call(
      {int limit,
      int page,
      String? sort,
      String? searchByName,
      String? searchBy,
      String? parentId});
}

/// @nodoc
class _$PaginationAndFilterCopyWithImpl<$Res, $Val extends PaginationAndFilter>
    implements $PaginationAndFilterCopyWith<$Res> {
  _$PaginationAndFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? sort = freezed,
    Object? searchByName = freezed,
    Object? searchBy = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      searchByName: freezed == searchByName
          ? _value.searchByName
          : searchByName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchBy: freezed == searchBy
          ? _value.searchBy
          : searchBy // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationAndFilterImplCopyWith<$Res>
    implements $PaginationAndFilterCopyWith<$Res> {
  factory _$$PaginationAndFilterImplCopyWith(_$PaginationAndFilterImpl value,
          $Res Function(_$PaginationAndFilterImpl) then) =
      __$$PaginationAndFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      int page,
      String? sort,
      String? searchByName,
      String? searchBy,
      String? parentId});
}

/// @nodoc
class __$$PaginationAndFilterImplCopyWithImpl<$Res>
    extends _$PaginationAndFilterCopyWithImpl<$Res, _$PaginationAndFilterImpl>
    implements _$$PaginationAndFilterImplCopyWith<$Res> {
  __$$PaginationAndFilterImplCopyWithImpl(_$PaginationAndFilterImpl _value,
      $Res Function(_$PaginationAndFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? sort = freezed,
    Object? searchByName = freezed,
    Object? searchBy = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$PaginationAndFilterImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      searchByName: freezed == searchByName
          ? _value.searchByName
          : searchByName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchBy: freezed == searchBy
          ? _value.searchBy
          : searchBy // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaginationAndFilterImpl extends _PaginationAndFilter {
  _$PaginationAndFilterImpl(
      {required this.limit,
      required this.page,
      this.sort,
      this.searchByName,
      this.searchBy,
      this.parentId})
      : super._();

  @override
  final int limit;
  @override
  final int page;
  @override
  final String? sort;
  @override
  final String? searchByName;
  @override
  final String? searchBy;
  @override
  final String? parentId;

  @override
  String toString() {
    return 'PaginationAndFilter(limit: $limit, page: $page, sort: $sort, searchByName: $searchByName, searchBy: $searchBy, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationAndFilterImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.searchByName, searchByName) ||
                other.searchByName == searchByName) &&
            (identical(other.searchBy, searchBy) ||
                other.searchBy == searchBy) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, limit, page, sort, searchByName, searchBy, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationAndFilterImplCopyWith<_$PaginationAndFilterImpl> get copyWith =>
      __$$PaginationAndFilterImplCopyWithImpl<_$PaginationAndFilterImpl>(
          this, _$identity);
}

abstract class _PaginationAndFilter extends PaginationAndFilter {
  factory _PaginationAndFilter(
      {required final int limit,
      required final int page,
      final String? sort,
      final String? searchByName,
      final String? searchBy,
      final String? parentId}) = _$PaginationAndFilterImpl;
  _PaginationAndFilter._() : super._();

  @override
  int get limit;
  @override
  int get page;
  @override
  String? get sort;
  @override
  String? get searchByName;
  @override
  String? get searchBy;
  @override
  String? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$PaginationAndFilterImplCopyWith<_$PaginationAndFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
