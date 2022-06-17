// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:dart_geohash/dart_geohash.dart';

Future<String> genGeoHash(
  LatLng input,
) async {
  // Add your function code here!
  GeoHasher hasher = GeoHasher();
  if (input == null) {
    return hasher.encode(0, 0);
  }
  return hasher.encode(input.latitude, input.longitude);
}
