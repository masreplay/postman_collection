import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example/src/dio.dart';
import 'package:example/src/models.dart';
import 'package:postman_collection/postman_collection.dart';
import 'package:retrofit/retrofit.dart';

part 'main.g.dart';

@RestApi()
abstract class AppClient {
  factory AppClient(Dio dio, {String baseUrl}) = _AppClient;

  @GET('/app/{platform}')
  Future<HttpResponse<AppResponse>> getAppData({
    @Path() required String platform,
    @Header('Accept-Language') required String language,
    @Query('version') required String version,
    @Body() required AppDataRequestBody body,
  });
}

class AppClientDoc {
  AppClientDoc(this._client);

  final AppClient _client;

  Future<PostmanCollectionItem> getAppDataDoc() async {
    final function = _client.getAppData;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(
          () => function(
            platform: 'android',
            version: '1.0.1',
            language: 'en',
            body: AppDataRequestBody(
              date: DateTime.now(),
            ),
          ),
        ),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            AppResponse(
              name: 'Postman',
              version: '1.0.0',
            ).toJson(),
          ),
        ),
        PostmanCollectionResponse(
          name: 'Error',
          status: '400',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(MessageResponse().toJson()),
        ),
      ],
    );
  }

  Future<PostmanCollectionItem> doc() async {
    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromClass(runtimeType),
      item: await Future.wait([
        getAppDataDoc(),
      ]),
    );
  }
}

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/users/')
  Future<HttpResponse<List<UserResponse>>> get();

  @GET('/users/{id}')
  Future<HttpResponse<UserResponse>> getDetail(@Path() String id);
}

class UserClientDoc {
  UserClientDoc(this._client);

  final UserClient _client;

  Future<PostmanCollectionItem> getDoc() async {
    final function = _client.get;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(function),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            [
              UserResponse(name: 'John Doe', email: 'johndoe@email.com'),
            ].map((e) => e.toJson()).toList(),
          ),
        )
      ],
    );
  }

  Future<PostmanCollectionItem> getDetailDoc() async {
    final function = _client.getDetail;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(() => function('1')),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            UserResponse(
              name: 'John Doe',
              email: 'johndoe@email.com',
            ).toJson(),
          ),
        )
      ],
    );
  }

  // doc
  Future<PostmanCollectionItem> doc() async {
    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromClass(runtimeType),
      item: await Future.wait([
        getDoc(),
        getDetailDoc(),
      ]),
    );
  }
}

Future<void> main() async {
  final dio = getDocumentationDio();

  final collection = PostmanCollection(
    info: PostmanCollectionInfo(
      name: 'Postman Collection',
      schema: PostmanCollectionInfo.schemaV210,
    ),
    item: await Future.wait([
      AppClientDoc(AppClient(dio)).doc(),
      UserClientDoc(UserClient(dio)).doc(),
    ]),
  );

  final projectName = 'postman_collection';

  final file = File('versions/$projectName.postman_collection.json');
  file.writeAsStringSync(
    JsonEncoder.withIndent('  ').convert(collection.toJson()),
  );
}
