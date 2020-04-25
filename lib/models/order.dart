import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {
  Order._();

  factory Order([updates(OrderBuilder b)]) = _$Order;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'parentOrderId')
  int get parentOrderId;

  @nullable
  @BuiltValueField(wireName: 'photographerId')
  int get photographerId;

  @nullable
  @BuiltValueField(wireName: 'userId')
  int get userId;

  @nullable
  @BuiltValueField(wireName: 'categoryId')
  int get categoryId;

  @nullable
  @BuiltValueField(wireName: 'time')
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: 'location')
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'amount')
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'settings')
  Object get settings;

  @nullable
  @BuiltValueField(wireName: 'rights')
  Object get rights;

  @nullable
  @BuiltValueField(wireName: 'acceptedAt')
  DateTime get acceptedAt;

  @nullable
  @BuiltValueField(wireName: 'message')
  String get message;

  static Serializer<Order> get serializer => _$orderSerializer;
}
