// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) => Launches(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['staticFireDateUtc'] as String?,
      staticFireDateUnix: (json['staticFireDateUnix'] as num?)?.toInt(),
      net: json['net'] as bool?,
      window: (json['window'] as num?)?.toInt(),
      rocket: json['rocket'] as String?,
      success: json['success'] as bool?,
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => Failures.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
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
      id: json['id'] as String?,
    );

Map<String, dynamic> _$LaunchesToJson(Launches instance) => <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'staticFireDateUtc': instance.staticFireDateUtc,
      'staticFireDateUnix': instance.staticFireDateUnix,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
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
      'id': instance.id,
    };

Fairings _$FairingsFromJson(Map<String, dynamic> json) => Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recoveryAttempt'] as bool?,
      recovered: json['recovered'] as bool?,
    );

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recoveryAttempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      webcast: json['webcast'] as String?,
      youtubeId: json['youtubeId'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Failures _$FailuresFromJson(Map<String, dynamic> json) => Failures(
      time: (json['time'] as num?)?.toInt(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$FailuresToJson(Failures instance) => <String, dynamic>{
      'time': instance.time,
      'reason': instance.reason,
    };

Cores _$CoresFromJson(Map<String, dynamic> json) => Cores(
      core: json['core'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landingAttempt'] as bool?,
    );

Map<String, dynamic> _$CoresToJson(Cores instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landingAttempt': instance.landingAttempt,
    };
