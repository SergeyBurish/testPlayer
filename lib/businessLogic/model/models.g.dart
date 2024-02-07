// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['page', 'has_more'],
    disallowNullValues: const ['page', 'has_more'],
  );
  return _$PaginationImpl(
    page: json['page'] as int,
    hasMore: json['has_more'] as bool,
  );
}

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'has_more': instance.hasMore,
    };

_$VideosResponseImpl _$$VideosResponseImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['pagination', 'data'],
    disallowNullValues: const ['pagination', 'data'],
  );
  return _$VideosResponseImpl(
    pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    main: json['main'] == null
        ? null
        : Video.fromJson(json['main'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) => Video.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$VideosResponseImplToJson(
        _$VideosResponseImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'main': instance.main,
      'data': instance.data,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'image',
      'name',
      'url',
      'duration',
      'views',
      'liked',
      'created_at'
    ],
    disallowNullValues: const [
      'id',
      'image',
      'name',
      'url',
      'duration',
      'views',
      'liked',
      'created_at'
    ],
  );
  return _$VideoImpl(
    id: json['id'] as int,
    image: json['image'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
    duration: json['duration'] as int,
    views: json['views'] as int,
    liked: json['liked'] as bool,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'url': instance.url,
      'duration': instance.duration,
      'views': instance.views,
      'liked': instance.liked,
      'created_at': instance.created_at,
    };
