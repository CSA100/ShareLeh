// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_listing_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserListingRecord> _$userListingRecordSerializer =
    new _$UserListingRecordSerializer();

class _$UserListingRecordSerializer
    implements StructuredSerializer<UserListingRecord> {
  @override
  final Iterable<Type> types = const [UserListingRecord, _$UserListingRecord];
  @override
  final String wireName = 'UserListingRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserListingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.listingOwner;
    if (value != null) {
      result
        ..add('listingOwner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qtyAvailable;
    if (value != null) {
      result
        ..add('qtyAvailable')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pickupLocation;
    if (value != null) {
      result
        ..add('pickupLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pickupCoords;
    if (value != null) {
      result
        ..add('pickupCoords')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.geoHash;
    if (value != null) {
      result
        ..add('geoHash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemPic;
    if (value != null) {
      result
        ..add('itemPic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingOwnerName;
    if (value != null) {
      result
        ..add('listingOwnerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagePath;
    if (value != null) {
      result
        ..add('imagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UserListingRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserListingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'listingOwner':
          result.listingOwner = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qtyAvailable':
          result.qtyAvailable = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupLocation':
          result.pickupLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupCoords':
          result.pickupCoords = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'geoHash':
          result.geoHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'itemPic':
          result.itemPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'listingOwnerName':
          result.listingOwnerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UserListingRecord extends UserListingRecord {
  @override
  final DocumentReference<Object> listingOwner;
  @override
  final String itemName;
  @override
  final int qtyAvailable;
  @override
  final String pickupLocation;
  @override
  final LatLng pickupCoords;
  @override
  final String geoHash;
  @override
  final String itemPic;
  @override
  final String listingOwnerName;
  @override
  final String imagePath;
  @override
  final DocumentReference<Object> reference;

  factory _$UserListingRecord(
          [void Function(UserListingRecordBuilder) updates]) =>
      (new UserListingRecordBuilder()..update(updates)).build();

  _$UserListingRecord._(
      {this.listingOwner,
      this.itemName,
      this.qtyAvailable,
      this.pickupLocation,
      this.pickupCoords,
      this.geoHash,
      this.itemPic,
      this.listingOwnerName,
      this.imagePath,
      this.reference})
      : super._();

  @override
  UserListingRecord rebuild(void Function(UserListingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListingRecordBuilder toBuilder() =>
      new UserListingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListingRecord &&
        listingOwner == other.listingOwner &&
        itemName == other.itemName &&
        qtyAvailable == other.qtyAvailable &&
        pickupLocation == other.pickupLocation &&
        pickupCoords == other.pickupCoords &&
        geoHash == other.geoHash &&
        itemPic == other.itemPic &&
        listingOwnerName == other.listingOwnerName &&
        imagePath == other.imagePath &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, listingOwner.hashCode),
                                        itemName.hashCode),
                                    qtyAvailable.hashCode),
                                pickupLocation.hashCode),
                            pickupCoords.hashCode),
                        geoHash.hashCode),
                    itemPic.hashCode),
                listingOwnerName.hashCode),
            imagePath.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserListingRecord')
          ..add('listingOwner', listingOwner)
          ..add('itemName', itemName)
          ..add('qtyAvailable', qtyAvailable)
          ..add('pickupLocation', pickupLocation)
          ..add('pickupCoords', pickupCoords)
          ..add('geoHash', geoHash)
          ..add('itemPic', itemPic)
          ..add('listingOwnerName', listingOwnerName)
          ..add('imagePath', imagePath)
          ..add('reference', reference))
        .toString();
  }
}

class UserListingRecordBuilder
    implements Builder<UserListingRecord, UserListingRecordBuilder> {
  _$UserListingRecord _$v;

  DocumentReference<Object> _listingOwner;
  DocumentReference<Object> get listingOwner => _$this._listingOwner;
  set listingOwner(DocumentReference<Object> listingOwner) =>
      _$this._listingOwner = listingOwner;

  String _itemName;
  String get itemName => _$this._itemName;
  set itemName(String itemName) => _$this._itemName = itemName;

  int _qtyAvailable;
  int get qtyAvailable => _$this._qtyAvailable;
  set qtyAvailable(int qtyAvailable) => _$this._qtyAvailable = qtyAvailable;

  String _pickupLocation;
  String get pickupLocation => _$this._pickupLocation;
  set pickupLocation(String pickupLocation) =>
      _$this._pickupLocation = pickupLocation;

  LatLng _pickupCoords;
  LatLng get pickupCoords => _$this._pickupCoords;
  set pickupCoords(LatLng pickupCoords) => _$this._pickupCoords = pickupCoords;

  String _geoHash;
  String get geoHash => _$this._geoHash;
  set geoHash(String geoHash) => _$this._geoHash = geoHash;

  String _itemPic;
  String get itemPic => _$this._itemPic;
  set itemPic(String itemPic) => _$this._itemPic = itemPic;

  String _listingOwnerName;
  String get listingOwnerName => _$this._listingOwnerName;
  set listingOwnerName(String listingOwnerName) =>
      _$this._listingOwnerName = listingOwnerName;

  String _imagePath;
  String get imagePath => _$this._imagePath;
  set imagePath(String imagePath) => _$this._imagePath = imagePath;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserListingRecordBuilder() {
    UserListingRecord._initializeBuilder(this);
  }

  UserListingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listingOwner = $v.listingOwner;
      _itemName = $v.itemName;
      _qtyAvailable = $v.qtyAvailable;
      _pickupLocation = $v.pickupLocation;
      _pickupCoords = $v.pickupCoords;
      _geoHash = $v.geoHash;
      _itemPic = $v.itemPic;
      _listingOwnerName = $v.listingOwnerName;
      _imagePath = $v.imagePath;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserListingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserListingRecord;
  }

  @override
  void update(void Function(UserListingRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserListingRecord build() {
    final _$result = _$v ??
        new _$UserListingRecord._(
            listingOwner: listingOwner,
            itemName: itemName,
            qtyAvailable: qtyAvailable,
            pickupLocation: pickupLocation,
            pickupCoords: pickupCoords,
            geoHash: geoHash,
            itemPic: itemPic,
            listingOwnerName: listingOwnerName,
            imagePath: imagePath,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
