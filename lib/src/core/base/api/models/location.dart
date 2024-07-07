import 'package:cubit_weather/src/core/constants/enums/location_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable(createToJson: true)
class Location {
  const Location({
    required this.title,
    required this.locationType,
    // required this.latLng,
    required this.woeid,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  final String title;
  final LocationType locationType;
  // @JsonKey(name: 'latt_long')
  // final LatitudeLength latLng;
  final int woeid;
}

final class LatitudeLength {
  const LatitudeLength({required this.latitude, required this.longitude});

  factory LatitudeLength.fromJson(String json) {
    final parts = json.split(',');
    assert(parts.length == 2);
    return LatitudeLength(latitude: double.tryParse(parts[0])!, longitude: double.tryParse(parts[1])!);
  }

  final double latitude;
  final double longitude;
}
