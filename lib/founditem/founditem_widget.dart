import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chatpage/chatpage_widget.dart';
import '../components/found_person_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_geofire/flutter_geofire.dart';
import 'package:flutter/foundation.dart';

class FounditemWidget extends StatefulWidget {
  const FounditemWidget({Key key}) : super(key: key);

  @override
  _FounditemWidgetState createState() => _FounditemWidgetState();
}

class _FounditemWidgetState extends State<FounditemWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'Home'),
              ),
            );
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: Text(
                        'People around you have the item,\nChat with them to request for it!',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<List<UserListingRecord>>(
                stream: queryUserListingRecord(
                  queryBuilder: (userListingRecord) => userListingRecord
                      .where('itemName',
                          isEqualTo: FFAppState().currentFindItem)
                      .where('listingOwner',
                          isNotEqualTo: currentUserReference),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }

                  var data = snapshot.data;

                  List<String> hashes = <String>[];
                  for (var obj in data) {
                    hashes.add(obj.geoHash);
                  }
                  hashes.add(FFAppState().currentGeoHash);
                  hashes.sort((a, b) => a.compareTo(b));

                  for (var hash in hashes) {
                    if (hash == FFAppState().currentGeoHash) {
                      hashes.remove(hash);
                      break;
                    }
                  }

                  int i = (hashes.length ~/ 2) - 1;
                  int j = i + 1;
                  int k = 0;


                  List<String> sortedHashes = <String>[];
                  while (i >= 0 && j < hashes.length) {
                    if (k % 2 == 0) {
                      sortedHashes.add(hashes.elementAt(i));
                      --i;
                    } else {
                      sortedHashes.add(hashes.elementAt(j));
                      ++j;
                    }
                  }

                  while (i >= 0) {
                    sortedHashes.add(hashes.elementAt(i));
                    --i;
                  }

                  while (j < hashes.length) {
                    sortedHashes.add(hashes.elementAt(j));
                    ++j;
                  }
                  
                  List<UserListingRecord> dataCopy = data.toList();
                  List<UserListingRecord> finalData = <UserListingRecord>[];


                  for (var hash in sortedHashes) {
                    for (var data in dataCopy) {
                      if (data.geoHash == hash) {
                        finalData.add(data);
                      } 
                    }
                  }

                  List<UserListingRecord> listViewUserListingRecordList =
                      finalData;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewUserListingRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewUserListingRecord =
                          listViewUserListingRecordList[listViewIndex];
                      return StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(
                            listViewUserListingRecord.listingOwner),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          final foundPersonUsersRecord = snapshot.data;
                          return InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatpageWidget(
                                    chatUser: foundPersonUsersRecord,
                                  ),
                                ),
                              );
                            },
                            child: FoundPersonWidget(
                              quantity: listViewUserListingRecord.qtyAvailable,
                              itemName: listViewUserListingRecord.itemName,
                              ownerName: valueOrDefault<String>(
                                listViewUserListingRecord.listingOwnerName,
                                'listing owner name',
                              ),
                              itemImageURI: valueOrDefault<String>(
                                listViewUserListingRecord.imagePath,
                                'https://occ-0-1722-1723.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABeZC-AcCHNAru3Xzz5mwfFgOuUtWquqCs3YCBm9S4yopYlPd3PeV9dudzsWmW8V0ez9z72bhnBVgcs6PgTK72gGEeJBUpD52iESU.jpg?r=d6a',
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
