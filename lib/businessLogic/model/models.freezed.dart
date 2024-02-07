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

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: 'page', required: true, disallowNullValue: true)
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
  bool get hasMore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page', required: true, disallowNullValue: true) int page,
      @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
      bool hasMore});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page', required: true, disallowNullValue: true) int page,
      @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
      bool hasMore});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$PaginationImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl extends _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: 'page', required: true, disallowNullValue: true)
      required this.page,
      @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
      required this.hasMore})
      : super._();

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: 'page', required: true, disallowNullValue: true)
  final int page;
  @override
  @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
  final bool hasMore;

  @override
  String toString() {
    return 'Pagination(page: $page, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination extends Pagination {
  const factory _Pagination(
      {@JsonKey(name: 'page', required: true, disallowNullValue: true)
      required final int page,
      @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
      required final bool hasMore}) = _$PaginationImpl;
  const _Pagination._() : super._();

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: 'page', required: true, disallowNullValue: true)
  int get page;
  @override
  @JsonKey(name: 'has_more', required: true, disallowNullValue: true)
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) {
  return _VideosResponse.fromJson(json);
}

/// @nodoc
mixin _$VideosResponse {
  @JsonKey(name: 'pagination', required: true, disallowNullValue: true)
  Pagination get pagination => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  Video? get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', required: true, disallowNullValue: true)
  List<Video> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosResponseCopyWith<VideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosResponseCopyWith<$Res> {
  factory $VideosResponseCopyWith(
          VideosResponse value, $Res Function(VideosResponse) then) =
      _$VideosResponseCopyWithImpl<$Res, VideosResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pagination', required: true, disallowNullValue: true)
      Pagination pagination,
      @JsonKey(name: 'main') Video? main,
      @JsonKey(name: 'data', required: true, disallowNullValue: true)
      List<Video> data});

  $PaginationCopyWith<$Res> get pagination;
  $VideoCopyWith<$Res>? get main;
}

/// @nodoc
class _$VideosResponseCopyWithImpl<$Res, $Val extends VideosResponse>
    implements $VideosResponseCopyWith<$Res> {
  _$VideosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? main = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Video?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $VideoCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideosResponseImplCopyWith<$Res>
    implements $VideosResponseCopyWith<$Res> {
  factory _$$VideosResponseImplCopyWith(_$VideosResponseImpl value,
          $Res Function(_$VideosResponseImpl) then) =
      __$$VideosResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pagination', required: true, disallowNullValue: true)
      Pagination pagination,
      @JsonKey(name: 'main') Video? main,
      @JsonKey(name: 'data', required: true, disallowNullValue: true)
      List<Video> data});

  @override
  $PaginationCopyWith<$Res> get pagination;
  @override
  $VideoCopyWith<$Res>? get main;
}

/// @nodoc
class __$$VideosResponseImplCopyWithImpl<$Res>
    extends _$VideosResponseCopyWithImpl<$Res, _$VideosResponseImpl>
    implements _$$VideosResponseImplCopyWith<$Res> {
  __$$VideosResponseImplCopyWithImpl(
      _$VideosResponseImpl _value, $Res Function(_$VideosResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? main = freezed,
    Object? data = null,
  }) {
    return _then(_$VideosResponseImpl(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Video?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosResponseImpl extends _VideosResponse {
  const _$VideosResponseImpl(
      {@JsonKey(name: 'pagination', required: true, disallowNullValue: true)
      required this.pagination,
      @JsonKey(name: 'main') this.main,
      @JsonKey(name: 'data', required: true, disallowNullValue: true)
      required final List<Video> data})
      : _data = data,
        super._();

  factory _$VideosResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosResponseImplFromJson(json);

  @override
  @JsonKey(name: 'pagination', required: true, disallowNullValue: true)
  final Pagination pagination;
  @override
  @JsonKey(name: 'main')
  final Video? main;
  final List<Video> _data;
  @override
  @JsonKey(name: 'data', required: true, disallowNullValue: true)
  List<Video> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'VideosResponse(pagination: $pagination, main: $main, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosResponseImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination, main,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosResponseImplCopyWith<_$VideosResponseImpl> get copyWith =>
      __$$VideosResponseImplCopyWithImpl<_$VideosResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosResponseImplToJson(
      this,
    );
  }
}

abstract class _VideosResponse extends VideosResponse {
  const factory _VideosResponse(
      {@JsonKey(name: 'pagination', required: true, disallowNullValue: true)
      required final Pagination pagination,
      @JsonKey(name: 'main') final Video? main,
      @JsonKey(name: 'data', required: true, disallowNullValue: true)
      required final List<Video> data}) = _$VideosResponseImpl;
  const _VideosResponse._() : super._();

  factory _VideosResponse.fromJson(Map<String, dynamic> json) =
      _$VideosResponseImpl.fromJson;

  @override
  @JsonKey(name: 'pagination', required: true, disallowNullValue: true)
  Pagination get pagination;
  @override
  @JsonKey(name: 'main')
  Video? get main;
  @override
  @JsonKey(name: 'data', required: true, disallowNullValue: true)
  List<Video> get data;
  @override
  @JsonKey(ignore: true)
  _$$VideosResponseImplCopyWith<_$VideosResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url', required: true, disallowNullValue: true)
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration', required: true, disallowNullValue: true)
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'views', required: true, disallowNullValue: true)
  int get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked', required: true, disallowNullValue: true)
  bool get liked => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true) int id,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
      String image,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
      String name,
      @JsonKey(name: 'url', required: true, disallowNullValue: true) String url,
      @JsonKey(name: 'duration', required: true, disallowNullValue: true)
      int duration,
      @JsonKey(name: 'views', required: true, disallowNullValue: true)
      int views,
      @JsonKey(name: 'liked', required: true, disallowNullValue: true)
      bool liked,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
      String created_at});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? url = null,
    Object? duration = null,
    Object? views = null,
    Object? liked = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true) int id,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
      String image,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
      String name,
      @JsonKey(name: 'url', required: true, disallowNullValue: true) String url,
      @JsonKey(name: 'duration', required: true, disallowNullValue: true)
      int duration,
      @JsonKey(name: 'views', required: true, disallowNullValue: true)
      int views,
      @JsonKey(name: 'liked', required: true, disallowNullValue: true)
      bool liked,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
      String created_at});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? url = null,
    Object? duration = null,
    Object? views = null,
    Object? liked = null,
    Object? created_at = null,
  }) {
    return _then(_$VideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl extends _Video {
  const _$VideoImpl(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      required this.id,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
      required this.image,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
      required this.name,
      @JsonKey(name: 'url', required: true, disallowNullValue: true)
      required this.url,
      @JsonKey(name: 'duration', required: true, disallowNullValue: true)
      required this.duration,
      @JsonKey(name: 'views', required: true, disallowNullValue: true)
      required this.views,
      @JsonKey(name: 'liked', required: true, disallowNullValue: true)
      required this.liked,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
      required this.created_at})
      : super._();

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  final String image;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  final String name;
  @override
  @JsonKey(name: 'url', required: true, disallowNullValue: true)
  final String url;
  @override
  @JsonKey(name: 'duration', required: true, disallowNullValue: true)
  final int duration;
  @override
  @JsonKey(name: 'views', required: true, disallowNullValue: true)
  final int views;
  @override
  @JsonKey(name: 'liked', required: true, disallowNullValue: true)
  final bool liked;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final String created_at;

  @override
  String toString() {
    return 'Video(id: $id, image: $image, name: $name, url: $url, duration: $duration, views: $views, liked: $liked, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, image, name, url, duration, views, liked, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video extends Video {
  const factory _Video(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      required final int id,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
      required final String image,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
      required final String name,
      @JsonKey(name: 'url', required: true, disallowNullValue: true)
      required final String url,
      @JsonKey(name: 'duration', required: true, disallowNullValue: true)
      required final int duration,
      @JsonKey(name: 'views', required: true, disallowNullValue: true)
      required final int views,
      @JsonKey(name: 'liked', required: true, disallowNullValue: true)
      required final bool liked,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
      required final String created_at}) = _$VideoImpl;
  const _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  String get image;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name;
  @override
  @JsonKey(name: 'url', required: true, disallowNullValue: true)
  String get url;
  @override
  @JsonKey(name: 'duration', required: true, disallowNullValue: true)
  int get duration;
  @override
  @JsonKey(name: 'views', required: true, disallowNullValue: true)
  int get views;
  @override
  @JsonKey(name: 'liked', required: true, disallowNullValue: true)
  bool get liked;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
