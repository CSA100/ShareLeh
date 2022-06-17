import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng jsonToLatLng(
  double lat,
  double lng,
) {
  // Add your function code here!
  if (lat == 0.0 && lng == 0.0) {
    return LatLng(0, 0);
  }

  return LatLng(lat, lng);
}

int returnNull() {
  // Add your function code here!
  return null;
}
