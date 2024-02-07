import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

/// Pagination data class
@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'page', required: true, disallowNullValue: true) required final int page,
    @JsonKey(name: 'has_more', required: true, disallowNullValue: true) required final bool hasMore,
  }) = _Pagination;

  const Pagination._();

  /// Generate Pagination class from Map<String, Object?>
  factory Pagination.fromJson(Map<String, Object?> json) => _$PaginationFromJson(json);
}

/// VideosResponse data class
@freezed
class VideosResponse with _$VideosResponse {
  const factory VideosResponse({
    @JsonKey(name: 'pagination', required: true, disallowNullValue: true)
    required final Pagination pagination,
    @JsonKey(name: 'main') final Video? main,
    @JsonKey(name: 'data', required: true, disallowNullValue: true) required final List<Video> data,
  }) = _VideosResponse;

  const VideosResponse._();

  /// Generate VideosResponse class from Map<String, Object?>
  factory VideosResponse.fromJson(Map<String, Object?> json) => _$VideosResponseFromJson(json);
}

/// Video data class
@freezed
class Video with _$Video {
  const factory Video({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required final int id,
    @JsonKey(name: 'image', required: true, disallowNullValue: true) required final String image,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) required final String name,
    @JsonKey(name: 'url', required: true, disallowNullValue: true) required final String url,
    @JsonKey(name: 'duration', required: true, disallowNullValue: true) required final int duration,
    @JsonKey(name: 'views', required: true, disallowNullValue: true) required final int views,
    @JsonKey(name: 'liked', required: true, disallowNullValue: true) required final bool liked,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
    required final String created_at,
  }) = _Video;

  const Video._();

  /// Generate Video class from Map<String, Object?>
  factory Video.fromJson(Map<String, Object?> json) => _$VideoFromJson(json);
}
