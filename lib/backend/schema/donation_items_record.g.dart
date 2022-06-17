// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonationItemsRecord> _$donationItemsRecordSerializer =
    new _$DonationItemsRecordSerializer();

class _$DonationItemsRecordSerializer
    implements StructuredSerializer<DonationItemsRecord> {
  @override
  final Iterable<Type> types = const [
    DonationItemsRecord,
    _$DonationItemsRecord
  ];
  @override
  final String wireName = 'DonationItemsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DonationItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.items;
    if (value != null) {
      result
        ..add('items')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
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
  DonationItemsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonationItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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

class _$DonationItemsRecord extends DonationItemsRecord {
  @override
  final BuiltList<String> items;
  @override
  final String title;
  @override
  final String date;
  @override
  final DocumentReference<Object> reference;

  factory _$DonationItemsRecord(
          [void Function(DonationItemsRecordBuilder) updates]) =>
      (new DonationItemsRecordBuilder()..update(updates)).build();

  _$DonationItemsRecord._({this.items, this.title, this.date, this.reference})
      : super._();

  @override
  DonationItemsRecord rebuild(
          void Function(DonationItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonationItemsRecordBuilder toBuilder() =>
      new DonationItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonationItemsRecord &&
        items == other.items &&
        title == other.title &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, items.hashCode), title.hashCode), date.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DonationItemsRecord')
          ..add('items', items)
          ..add('title', title)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class DonationItemsRecordBuilder
    implements Builder<DonationItemsRecord, DonationItemsRecordBuilder> {
  _$DonationItemsRecord _$v;

  ListBuilder<String> _items;
  ListBuilder<String> get items => _$this._items ??= new ListBuilder<String>();
  set items(ListBuilder<String> items) => _$this._items = items;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DonationItemsRecordBuilder() {
    DonationItemsRecord._initializeBuilder(this);
  }

  DonationItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _title = $v.title;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonationItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonationItemsRecord;
  }

  @override
  void update(void Function(DonationItemsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DonationItemsRecord build() {
    _$DonationItemsRecord _$result;
    try {
      _$result = _$v ??
          new _$DonationItemsRecord._(
              items: _items?.build(),
              title: title,
              date: date,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DonationItemsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
