import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  bool checklist1 = false;

  List<bool> sharingChecklist = [];

  List<String> selectionlist = [
    'Kiwi',
    'Mess Tin',
    'Long 4 Top (S)',
    'Long 4 Top (M)',
    'Long 4 Top (L)',
    'Long 4 Bottom (S)',
    'Long 4 Bottom (M)',
    'Long 4 Bottom (L)'
  ];

  String currentFindItem = '';
  String currentGeoHash = '';

  DocumentReference chatuser;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
