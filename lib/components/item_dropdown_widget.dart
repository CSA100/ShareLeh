import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDropdownWidget extends StatefulWidget {
  const ItemDropdownWidget({Key key}) : super(key: key);

  @override
  _ItemDropdownWidgetState createState() => _ItemDropdownWidgetState();
}

class _ItemDropdownWidgetState extends State<ItemDropdownWidget> {
  String dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
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
    );
  }
}
