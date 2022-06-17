import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donation_items_record.g.dart';

abstract class DonationItemsRecord
    implements Built<DonationItemsRecord, DonationItemsRecordBuilder> {
  static Serializer<DonationItemsRecord> get serializer =>
      _$donationItemsRecordSerializer;

  @nullable
  BuiltList<String> get items;

  @nullable
  String get title;

  @nullable
  String get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DonationItemsRecordBuilder builder) => builder
    ..items = ListBuilder()
    ..title = ''
    ..date = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donation_items');

  static Stream<DonationItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DonationItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DonationItemsRecord._();
  factory DonationItemsRecord(
          [void Function(DonationItemsRecordBuilder) updates]) =
      _$DonationItemsRecord;

  static DonationItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDonationItemsRecordData({
  String title,
  String date,
}) =>
    serializers.toFirestore(
        DonationItemsRecord.serializer,
        DonationItemsRecord((d) => d
          ..items = null
          ..title = title
          ..date = date));
