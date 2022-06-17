// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklists_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChecklistsRecord> _$checklistsRecordSerializer =
    new _$ChecklistsRecordSerializer();

class _$ChecklistsRecordSerializer
    implements StructuredSerializer<ChecklistsRecord> {
  @override
  final Iterable<Type> types = const [ChecklistsRecord, _$ChecklistsRecord];
  @override
  final String wireName = 'ChecklistsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ChecklistsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.creator;
    if (value != null) {
      result
        ..add('Creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item1;
    if (value != null) {
      result
        ..add('item1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item2;
    if (value != null) {
      result
        ..add('item2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item3;
    if (value != null) {
      result
        ..add('item3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item4;
    if (value != null) {
      result
        ..add('item4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item5;
    if (value != null) {
      result
        ..add('item5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qty1;
    if (value != null) {
      result
        ..add('qty1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qty2;
    if (value != null) {
      result
        ..add('qty2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qty3;
    if (value != null) {
      result
        ..add('qty3')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qty4;
    if (value != null) {
      result
        ..add('qty4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qty5;
    if (value != null) {
      result
        ..add('qty5')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nameOfChecklist;
    if (value != null) {
      result
        ..add('nameOfChecklist')
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
    value = object.time;
    if (value != null) {
      result
        ..add('time')
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
  ChecklistsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChecklistsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item1':
          result.item1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item2':
          result.item2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item3':
          result.item3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item4':
          result.item4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item5':
          result.item5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qty1':
          result.qty1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty2':
          result.qty2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty3':
          result.qty3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty4':
          result.qty4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty5':
          result.qty5 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nameOfChecklist':
          result.nameOfChecklist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
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

class _$ChecklistsRecord extends ChecklistsRecord {
  @override
  final String creator;
  @override
  final String item1;
  @override
  final String item2;
  @override
  final String item3;
  @override
  final String item4;
  @override
  final String item5;
  @override
  final int qty1;
  @override
  final int qty2;
  @override
  final int qty3;
  @override
  final int qty4;
  @override
  final int qty5;
  @override
  final String nameOfChecklist;
  @override
  final String date;
  @override
  final String time;
  @override
  final DocumentReference<Object> reference;

  factory _$ChecklistsRecord(
          [void Function(ChecklistsRecordBuilder) updates]) =>
      (new ChecklistsRecordBuilder()..update(updates)).build();

  _$ChecklistsRecord._(
      {this.creator,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.item5,
      this.qty1,
      this.qty2,
      this.qty3,
      this.qty4,
      this.qty5,
      this.nameOfChecklist,
      this.date,
      this.time,
      this.reference})
      : super._();

  @override
  ChecklistsRecord rebuild(void Function(ChecklistsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChecklistsRecordBuilder toBuilder() =>
      new ChecklistsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChecklistsRecord &&
        creator == other.creator &&
        item1 == other.item1 &&
        item2 == other.item2 &&
        item3 == other.item3 &&
        item4 == other.item4 &&
        item5 == other.item5 &&
        qty1 == other.qty1 &&
        qty2 == other.qty2 &&
        qty3 == other.qty3 &&
        qty4 == other.qty4 &&
        qty5 == other.qty5 &&
        nameOfChecklist == other.nameOfChecklist &&
        date == other.date &&
        time == other.time &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                creator
                                                                    .hashCode),
                                                            item1.hashCode),
                                                        item2.hashCode),
                                                    item3.hashCode),
                                                item4.hashCode),
                                            item5.hashCode),
                                        qty1.hashCode),
                                    qty2.hashCode),
                                qty3.hashCode),
                            qty4.hashCode),
                        qty5.hashCode),
                    nameOfChecklist.hashCode),
                date.hashCode),
            time.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChecklistsRecord')
          ..add('creator', creator)
          ..add('item1', item1)
          ..add('item2', item2)
          ..add('item3', item3)
          ..add('item4', item4)
          ..add('item5', item5)
          ..add('qty1', qty1)
          ..add('qty2', qty2)
          ..add('qty3', qty3)
          ..add('qty4', qty4)
          ..add('qty5', qty5)
          ..add('nameOfChecklist', nameOfChecklist)
          ..add('date', date)
          ..add('time', time)
          ..add('reference', reference))
        .toString();
  }
}

class ChecklistsRecordBuilder
    implements Builder<ChecklistsRecord, ChecklistsRecordBuilder> {
  _$ChecklistsRecord _$v;

  String _creator;
  String get creator => _$this._creator;
  set creator(String creator) => _$this._creator = creator;

  String _item1;
  String get item1 => _$this._item1;
  set item1(String item1) => _$this._item1 = item1;

  String _item2;
  String get item2 => _$this._item2;
  set item2(String item2) => _$this._item2 = item2;

  String _item3;
  String get item3 => _$this._item3;
  set item3(String item3) => _$this._item3 = item3;

  String _item4;
  String get item4 => _$this._item4;
  set item4(String item4) => _$this._item4 = item4;

  String _item5;
  String get item5 => _$this._item5;
  set item5(String item5) => _$this._item5 = item5;

  int _qty1;
  int get qty1 => _$this._qty1;
  set qty1(int qty1) => _$this._qty1 = qty1;

  int _qty2;
  int get qty2 => _$this._qty2;
  set qty2(int qty2) => _$this._qty2 = qty2;

  int _qty3;
  int get qty3 => _$this._qty3;
  set qty3(int qty3) => _$this._qty3 = qty3;

  int _qty4;
  int get qty4 => _$this._qty4;
  set qty4(int qty4) => _$this._qty4 = qty4;

  int _qty5;
  int get qty5 => _$this._qty5;
  set qty5(int qty5) => _$this._qty5 = qty5;

  String _nameOfChecklist;
  String get nameOfChecklist => _$this._nameOfChecklist;
  set nameOfChecklist(String nameOfChecklist) =>
      _$this._nameOfChecklist = nameOfChecklist;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ChecklistsRecordBuilder() {
    ChecklistsRecord._initializeBuilder(this);
  }

  ChecklistsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creator = $v.creator;
      _item1 = $v.item1;
      _item2 = $v.item2;
      _item3 = $v.item3;
      _item4 = $v.item4;
      _item5 = $v.item5;
      _qty1 = $v.qty1;
      _qty2 = $v.qty2;
      _qty3 = $v.qty3;
      _qty4 = $v.qty4;
      _qty5 = $v.qty5;
      _nameOfChecklist = $v.nameOfChecklist;
      _date = $v.date;
      _time = $v.time;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChecklistsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChecklistsRecord;
  }

  @override
  void update(void Function(ChecklistsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChecklistsRecord build() {
    final _$result = _$v ??
        new _$ChecklistsRecord._(
            creator: creator,
            item1: item1,
            item2: item2,
            item3: item3,
            item4: item4,
            item5: item5,
            qty1: qty1,
            qty2: qty2,
            qty3: qty3,
            qty4: qty4,
            qty5: qty5,
            nameOfChecklist: nameOfChecklist,
            date: date,
            time: time,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
