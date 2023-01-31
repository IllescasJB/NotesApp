//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_post.g.dart';

/// UserPost
///
/// Properties:
/// * [name] - User's name
/// * [email] - User's email
@BuiltValue()
abstract class UserPost implements Built<UserPost, UserPostBuilder> {
  /// User's name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// User's email
  @BuiltValueField(wireName: r'email')
  String get email;

  UserPost._();

  factory UserPost([void updates(UserPostBuilder b)]) = _$UserPost;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPostBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPost> get serializer => _$UserPostSerializer();
}

class _$UserPostSerializer implements PrimitiveSerializer<UserPost> {
  @override
  final Iterable<Type> types = const [UserPost, _$UserPost];

  @override
  final String wireName = r'UserPost';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPost object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UserPost object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserPostBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UserPost deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPostBuilder();
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

