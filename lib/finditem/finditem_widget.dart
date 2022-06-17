import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import '../founditem/founditem_widget.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geohash/geohash.dart';
import 'package:flutter/foundation.dart';
import '../backend/api_requests/api_calls.dart';

class FinditemWidget extends StatefulWidget {
  const FinditemWidget({Key key}) : super(key: key);

  @override
  _FinditemWidgetState createState() => _FinditemWidgetState();
}

class _FinditemWidgetState extends State<FinditemWidget>
    with TickerProviderStateMixin {
  ApiCallResponse geoOut;
  TextEditingController itemNameController;
  TextEditingController quantityController;
  TextEditingController timeController;
  var placePickerValue = FFPlace();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'placePickerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    itemNameController = TextEditingController();
    quantityController = TextEditingController();
    timeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Find',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: itemNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter Item Name',
                          labelStyle: FlutterFlowTheme.of(context).title1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                          prefixIcon: Icon(
                            Icons.add_box,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 32,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Lexend Deca',
                              fontSize: 18,
                            ),
                        textAlign: TextAlign.start,
                      ).animated(
                          [animationsMap['textFieldOnPageLoadAnimation1']]),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: quantityController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Quantity',
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                            prefixIcon: Icon(
                              Icons.format_list_numbered_rounded,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ).animated(
                            [animationsMap['textFieldOnPageLoadAnimation2']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: TextFormField(
                          controller: timeController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Preferred Pick-up Time',
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                            prefixIcon: Icon(
                              Icons.access_time,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ).animated(
                            [animationsMap['textFieldOnPageLoadAnimation3']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 16, 10, 0),
                        child: FlutterFlowPlacePicker(
                          iOSGoogleMapsApiKey:
                              'AIzaSyB4f22DW_MsLRwNm_o_S-cDEa2WJRa3QVY',
                          androidGoogleMapsApiKey:
                              'AIzaSyDx08PbP6HtIzwI4g9u_zONgLOQKrkBevk',
                          webGoogleMapsApiKey:
                              'AIzaSyAp33RDOR1FRu6AOEXK417XesumW-5dZ-A',
                          onSelect: (place) =>
                              setState(() => placePickerValue = place),
                          defaultText: 'Select Pick Up Location',
                          icon: Icon(
                            Icons.place,
                            color: FlutterFlowTheme.of(context).black600,
                            size: 16,
                          ),
                          buttonOptions: FFButtonOptions(
                            width: 200,
                            height: 50,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1,
                            ),
                            borderRadius: 5,
                          ),
                        ).animated(
                            [animationsMap['placePickerOnPageLoadAnimation']]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {

                          geoOut = await GeocodingCall.call(
                            address: placePickerValue.address,
                          );

                          var lat = getJsonField(
                            (geoOut?.jsonBody ?? ''),
                            r'''$.results[0].geometry.location.lat''',
                          );

                          var lng = getJsonField(
                            (geoOut?.jsonBody ?? ''),
                            r'''$.results[0].geometry.location.lng''',
                          );

                          var hash = Geohash.encode(lat,lng);

                          debugPrint("hello: $hash");

                          setState(() => FFAppState().currentFindItem =
                              itemNameController.text);
                          setState(() => FFAppState().currentGeoHash = hash);
                          var toPrint = FFAppState().currentGeoHash;
                          debugPrint('from state: $toPrint');
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FounditemWidget(),
                            ),
                          );
                        },
                        text: 'Find Item',
                        options: FFButtonOptions(
                          width: 300,
                          height: 70,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).title2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Tap above to find the item you need!',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0x81000000),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
