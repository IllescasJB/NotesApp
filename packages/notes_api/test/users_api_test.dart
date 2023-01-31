import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UsersApi
void main() {
  final instance = Openapi().getUsersApi();

  group(UsersApi, () {
    // Create a new User
    //
    //Future<bool> createUser(UserPost userPost) async
    test('test createUser', () async {
      // TODO
    });

    // Delete user
    //
    //Future<bool> deleteUserById(int id) async
    test('test deleteUserById', () async {
      // TODO
    });

    // Gets a user by id
    //
    //Future<UserGet> getUserById(int id) async
    test('test getUserById', () async {
      // TODO
    });

    // List all users
    //
    //Future<BuiltList<UserGet>> listAllUsers() async
    test('test listAllUsers', () async {
      // TODO
    });

    // Updates a user
    //
    //Future<bool> updateUser(int id, UserPost userPost) async
    test('test updateUser', () async {
      // TODO
    });

  });
}
