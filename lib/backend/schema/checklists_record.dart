import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'checklists_record.g.dart';

abstract class ChecklistsRecord
    implements Built<ChecklistsRecord, ChecklistsRecordBuilder> {
  static Serializer<ChecklistsRecord> get serializer =>
      _$checklistsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Creator')
  String get creator;

  @nullable
  String get item1;

  @nullable
  String get item2;

  @nullable
  String get item3;

  @nullable
  String get item4;

  @nullable
  String get item5;

  @nullable
  int get qty1;

  @nullable
  int get qty2;

  @nullable
  int get qty3;

  @nullable
  int get qty4;

  @nullable
  int get qty5;

  @nullable
  String get nameOfChecklist;

  @nullable
  String get date;

  @nullable
  String get time;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChecklistsRecordBuilder builder) => builder
    ..creator = ''
    ..item1 = ''
    ..item2 = ''
    ..item3 = ''
    ..item4 = ''
    ..item5 = ''
    ..qty1 = 0
    ..qty2 = 0
    ..qty3 = 0
    ..qty4 = 0
    ..qty5 = 0
    ..nameOfChecklist = ''
    ..date = ''
    ..time = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checklists');

  static Stream<ChecklistsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChecklistsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChecklistsRecord._();
  factory ChecklistsRecord([void Function(ChecklistsRecordBuilder) updates]) =
      _$ChecklistsRecord;

  static ChecklistsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChecklistsRecordData({
  String creator,
  String item1,
  String item2,
  String item3,
  String item4,
  String item5,
  int qty1,
  int qty2,
  int qty3,
  int qty4,
  int qty5,
  String nameOfChecklist,
  String date,
  String time,
}) =>
    serializers.toFirestore(
        ChecklistsRecord.serializer,
        ChecklistsRecord((c) => c
          ..creator = creator
          ..item1 = item1
          ..item2 = item2
          ..item3 = item3
          ..item4 = item4
          ..item5 = item5
          ..qty1 = qty1
          ..qty2 = qty2
          ..qty3 = qty3
          ..qty4 = qty4
          ..qty5 = qty5
          ..nameOfChecklist = nameOfChecklist
          ..date = date
          ..time = time));
