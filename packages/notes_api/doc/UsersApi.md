# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createuser) | **POST** /api/v1/users | Create a new User
[**deleteUserById**](UsersApi.md#deleteuserbyid) | **DELETE** /api/v1/users/{id} | Delete user
[**getUserById**](UsersApi.md#getuserbyid) | **GET** /api/v1/users/{id} | Gets a user by id
[**listAllUsers**](UsersApi.md#listallusers) | **GET** /api/v1/users | List all users
[**updateUser**](UsersApi.md#updateuser) | **PUT** /api/v1/users/{id} | Updates a user


# **createUser**
> bool createUser(userPost)

Create a new User

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final UserPost userPost = ; // UserPost | 

try {
    final response = api.createUser(userPost);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPost** | [**UserPost**](UserPost.md)|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserById**
> bool deleteUserById(id)

Delete user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final int id = 56; // int | The user id

try {
    final response = api.deleteUserById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->deleteUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The user id | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> UserGet getUserById(id)

Gets a user by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final int id = 56; // int | The user id

try {
    final response = api.getUserById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The user id | 

### Return type

[**UserGet**](UserGet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllUsers**
> BuiltList<UserGet> listAllUsers()

List all users

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();

try {
    final response = api.listAllUsers();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->listAllUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UserGet&gt;**](UserGet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> bool updateUser(id, userPost)

Updates a user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final int id = 56; // int | The user id
final UserPost userPost = ; // UserPost | 

try {
    final response = api.updateUser(id, userPost);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The user id | 
 **userPost** | [**UserPost**](UserPost.md)|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

