// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tinder_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TinderImage> _$tinderImageSerializer = new _$TinderImageSerializer();

class _$TinderImageSerializer implements StructuredSerializer<TinderImage> {
  @override
  final Iterable<Type> types = const [TinderImage, _$TinderImage];
  @override
  final String wireName = 'TinderImage';

  @override
  Iterable<Object> serialize(Serializers serializers, TinderImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.answer != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(object.answer,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  TinderImage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TinderImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TinderImage extends TinderImage {
  @override
  final String image;
  @override
  final bool answer;

  factory _$TinderImage([void Function(TinderImageBuilder) updates]) =>
      (new TinderImageBuilder()..update(updates)).build();

  _$TinderImage._({this.image, this.answer}) : super._();

  @override
  TinderImage rebuild(void Function(TinderImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TinderImageBuilder toBuilder() => new TinderImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TinderImage &&
        image == other.image &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, image.hashCode), answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TinderImage')
          ..add('image', image)
          ..add('answer', answer))
        .toString();
  }
}

class TinderImageBuilder implements Builder<TinderImage, TinderImageBuilder> {
  _$TinderImage _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  bool _answer;
  bool get answer => _$this._answer;
  set answer(bool answer) => _$this._answer = answer;

  TinderImageBuilder();

  TinderImageBuilder get _$this {
    if (_$v != null) {
      _image = _$v.image;
      _answer = _$v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TinderImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TinderImage;
  }

  @override
  void update(void Function(TinderImageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TinderImage build() {
    final _$result = _$v ?? new _$TinderImage._(image: image, answer: answer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
