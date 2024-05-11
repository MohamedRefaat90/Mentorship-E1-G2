// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lanuchpad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchpadModel _$LaunchpadModelFromJson(Map<String, dynamic> json) =>
    LaunchpadModel(
      images: json['images']['large'][0] as String?,
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      locality: json['locality'] as String?,
      region: json['region'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      launchAttempts: (json['launch_attempts'] as num?)?.toInt(),
      launchSuccesses: (json['launch_successes'] as num?)?.toInt(),
      rockets:
          (json['rockets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timezone: json['timezone'] as String?,
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      details: json['details'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$LaunchpadModelToJson(LaunchpadModel instance) =>
    <String, dynamic>{
      'images': instance.images,
      'name': instance.name,
      'fullName': instance.fullName,
      'locality': instance.locality,
      'region': instance.region,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'launch_attempts': instance.launchAttempts,
      'launch_successes': instance.launchSuccesses,
      'rockets': instance.rockets,
      'timezone': instance.timezone,
      'launches': instance.launches,
      'status': instance.status,
      'details': instance.details,
      'id': instance.id,
    };
