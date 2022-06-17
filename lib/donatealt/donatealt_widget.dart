import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import '../flutter_flow/upload_media.dart';
import '../main.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geohash/geohash.dart';
import 'package:flutter/foundation.dart';

class DonatealtWidget extends StatefulWidget {
  const DonatealtWidget({Key key}) : super(key: key);

  @override
  _DonatealtWidgetState createState() => _DonatealtWidgetState();
}

class _DonatealtWidgetState extends State<DonatealtWidget> {
  ApiCallResponse geoOut;
  String uploadedFileUrl = '';
  String dropDownValue;
  TextEditingController quantityController;
  var placePickerValue = FFPlace();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    quantityController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Donate',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls != null &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 200,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  uploadedFileUrl,
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0x3A000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowDropDown(
                  initialOption: dropDownValue ??= 'Select Item',
                  options: [
                    'Kiwi',
                    'Mess tin',
                    'Socks',
                    'No. 4 shirt',
                    'No. 4 pants',
                    'Altama boots',
                    'Firesticks',
                    'Elbow guards',
                    'Knee guards',
                    'Select Item'
                  ],
                  onChanged: (val) => setState(() => dropDownValue = val),
                  width: 280,
                  height: 52,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                      ),
                  hintText: 'Please select...',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ],
            ),
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            color: FlutterFlowTheme.of(context).alternate,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                  child: TextFormField(
                    controller: quantityController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      labelStyle: FlutterFlowTheme.of(context).bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    ),
                    style: FlutterFlowTheme.of(context).title3,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
            child: FlutterFlowPlacePicker(
              iOSGoogleMapsApiKey: 'AIzaSyB4f22DW_MsLRwNm_o_S-cDEa2WJRa3QVY',
              androidGoogleMapsApiKey:
                  'AIzaSyDx08PbP6HtIzwI4g9u_zONgLOQKrkBevk',
              webGoogleMapsApiKey: 'AIzaSyAp33RDOR1FRu6AOEXK417XesumW-5dZ-A',
              onSelect: (place) => setState(() => placePickerValue = place),
              defaultText: 'Enter Pick Up Location',
              icon: Icon(
                Icons.place,
                color: FlutterFlowTheme.of(context).tertiaryColor,
                size: 16,
              ),
              buttonOptions: FFButtonOptions(
                width: 270,
                height: 50,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).grayIcon,
                  width: 1,
                ),
                borderRadius: 5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: FFButtonWidget(
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

                final userListingCreateData = createUserListingRecordData(
                  listingOwner: currentUserReference,
                  itemName: dropDownValue,
                  qtyAvailable: int.parse(quantityController.text),
                  pickupLocation: placePickerValue.address,
                  listingOwnerName: valueOrDefault<String>(
                    currentUserDisplayName,
                    'display name',
                  ),
                  imagePath: uploadedFileUrl,
                  pickupCoords: placePickerValue.latLng,
                  geoHash: hash,
                );
                await UserListingRecord.collection
                    .doc()
                    .set(userListingCreateData);
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBarPage(initialPage: 'Home'),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Item successfully added!',
                      style: TextStyle(),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: Color(0x00000000),
                  ),
                );

                setState(() {});
              },
              text: 'Submit Listing',
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
