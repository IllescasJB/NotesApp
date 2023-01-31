//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_get.g.dart';

/// UserGet
///
/// Properties:
/// * [id] - The auto-generated id of the user
/// * [name] - User's name
/// * [email] - User's email
@BuiltValue()
abstract class UserGet implements Built<UserGet, UserGetBuilder> {
  /// The auto-generated id of the user
  @BuiltValueField(wireName: r'id')
  int get id;

  /// User's name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// User's email
  @BuiltValueField(wireName: r'email')
  String get email;

  UserGet._();

  factory UserGet([void updates(UserGetBuilder b)]) = _$UserGet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserGetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserGet> get serializer => _$UserGetSerializer();
}

class _$UserGetSerializer implements PrimitiveSerializer<UserGet> {
  @override
  final Iterable<Type> types = const [UserGet, _$UserGet];

  @override
  final String wireName = r'UserGet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserGet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserGet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserGetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserGet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserGetBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

