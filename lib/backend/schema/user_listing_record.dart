import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_listing_record.g.dart';

abstract class UserListingRecord
    implements Built<UserListingRecord, UserListingRecordBuilder> {
  static Serializer<UserListingRecord> get serializer =>
      _$userListingRecordSerializer;

  @nullable
  DocumentReference get listingOwner;

  @nullable
  String get itemName;

  @nullable
  int get qtyAvailable;

  @nullable
  String get pickupLocation;

  @nullable
  LatLng get pickupCoords;

  @nullable
  String get geoHash;

  @nullable
  String get itemPic;

  @nullable
  String get listingOwnerName;

  @nullable
  String get imagePath;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserListingRecordBuilder builder) => builder
    ..itemName = ''
    ..qtyAvailable = 0
    ..pickupLocation = ''
    ..geoHash = ''
    ..itemPic = ''
    ..listingOwnerName = ''
    ..imagePath = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userListing');

  static Stream<UserListingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserListingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserListingRecord._();
  factory UserListingRecord([void Function(UserListingRecordBuilder) updates]) =
      _$UserListingRecord;

  static UserListingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserListingRecordData({
  DocumentReference listingOwner,
  String itemName,
  int qtyAvailable,
  String pickupLocation,
  LatLng pickupCoords,
  String geoHash,
  String itemPic,
  String listingOwnerName,
  String imagePath,
}) =>
    serializers.toFirestore(
        UserListingRecord.serializer,
        UserListingRecord((u) => u
          ..listingOwner = listingOwner
          ..itemName = itemName
          ..qtyAvailable = qtyAvailable
          ..pickupLocation = pickupLocation
          ..pickupCoords = pickupCoords
          ..geoHash = geoHash
          ..itemPic = itemPic
          ..listingOwnerName = listingOwnerName
          ..imagePath = imagePath));
