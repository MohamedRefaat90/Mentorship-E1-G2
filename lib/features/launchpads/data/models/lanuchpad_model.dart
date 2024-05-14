import 'package:json_annotation/json_annotation.dart';

part 'lanuchpad_model.g.dart';

@JsonSerializable()
class LaunchpadModel {
  String? images;
  String? name;
  String? fullName;
  String? locality;
  String? region;
  double? latitude;
  double? longitude;
  int? launchAttempts;
  int? launchSuccesses;
  List<String>? rockets;
  String? timezone;
  List<String>? launches;
  String? status;
  String? details;
  String? id;

  LaunchpadModel(
      {this.images,
      this.name,
      this.fullName,
      this.locality,
      this.region,
      this.latitude,
      this.longitude,
      this.launchAttempts,
      this.launchSuccesses,
      this.rockets,
      this.timezone,
      this.launches,
      this.status,
      this.details,
      this.id});

  factory LaunchpadModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchpadModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchpadModelToJson(this);
}
