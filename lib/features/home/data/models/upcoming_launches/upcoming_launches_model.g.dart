// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_launches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingLaunches _$UpcomingLaunchesFromJson(Map<String, dynamic> json) =>
    UpcomingLaunches(
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      net: json['net'] as bool?,
      rocket: json['rocket'] as String?,
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      launchpad: json['launchpad'] as String?,
      flightNumber: (json['flightNumber'] as num?)?.toInt(),
      name: json['name'] as String?,
      dateUtc: json['dateUtc'] as String?,
      dateUnix: (json['dateUnix'] as num?)?.toInt(),
      dateLocal: json['dateLocal'] as String?,
      datePrecision: json['datePrecision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Cores.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoUpdate: json['autoUpdate'] as bool?,
      tbd: json['tbd'] as bool?,
      launchLibraryId: json['launchLibraryId'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UpcomingLaunchesToJson(UpcomingLaunches instance) =>
    <String, dynamic>{
      'links': instance.links,
      'net': instance.net,
      'rocket': instance.rocket,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc,
      'dateUnix': instance.dateUnix,
      'dateLocal': instance.dateLocal,
      'datePrecision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'autoUpdate': instance.autoUpdate,
      'tbd': instance.tbd,
      'launchLibraryId': instance.launchLibraryId,
      'id': instance.id,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      webcast: json['webcast'] as String?,
      youtubeId: json['youtubeId'] as String?,
    )..patch = json['patch'] == null
        ? null
        : Patch.fromJson(json['patch'] as Map<String, dynamic>);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'patch': instance.patch,
    };

Cores _$CoresFromJson(Map<String, dynamic> json) => Cores(
      core: json['core'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
    );

Map<String, dynamic> _$CoresToJson(Cores instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };
