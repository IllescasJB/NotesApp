# openapi (EXPERIMENTAL)
This is a simple CRUD API application made with Express and document with Swagger

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.0.1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  openapi: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    path: /path/to/openapi
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/openapi.dart';


final api = Openapi().getUsersApi();
final UserPost userPost = ; // UserPost | 

try {
    final response = await api.createUser(userPost);
    print(response);
} catch on DioError (e) {
    print("Exception when calling UsersApi->createUser: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*UsersApi*](doc/UsersApi.md) | [**createUser**](doc/UsersApi.md#createuser) | **POST** /api/v1/users | Create a new User
[*UsersApi*](doc/UsersApi.md) | [**deleteUserById**](doc/UsersApi.md#deleteuserbyid) | **DELETE** /api/v1/users/{id} | Delete user
[*UsersApi*](doc/UsersApi.md) | [**getUserById**](doc/UsersApi.md#getuserbyid) | **GET** /api/v1/users/{id} | Gets a user by id
[*UsersApi*](doc/UsersApi.md) | [**listAllUsers**](doc/UsersApi.md#listallusers) | **GET** /api/v1/users | List all users
[*UsersApi*](doc/UsersApi.md) | [**updateUser**](doc/UsersApi.md#updateuser) | **PUT** /api/v1/users/{id} | Updates a user


## Documentation For Models

 - [ErrorResponse](doc/ErrorResponse.md)
 - [UserGet](doc/UserGet.md)
 - [UserPost](doc/UserPost.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author


