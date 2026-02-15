/// Response models for the Bucket List API.

/// API Response wrapper.
class BucketlistResponse {
  final String status;
  final dynamic error;
  final BucketlistData? data;

  BucketlistResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BucketlistResponse.fromJson(Map<String, dynamic> json) => BucketlistResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BucketlistData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Bucket List API.

class BucketlistData {
  String? bucketListItem;

  BucketlistData({
    this.bucketListItem,
  });

  factory BucketlistData.fromJson(Map<String, dynamic> json) => BucketlistData(
      bucketListItem: json['bucketListItem'],
    );
}
