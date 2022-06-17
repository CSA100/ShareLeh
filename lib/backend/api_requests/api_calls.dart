import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GeocodingCall {
  static Future<ApiCallResponse> call({
    String address = '1 Depot Rd, Singapore 109679',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Geocoding',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyDROKjECQ_iHaXW3zZKbLSa8kK8bwBqBRw&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'address': address,
      },
      returnBody: true,
    );
  }
}
