import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:testing/src/models/base_response.dart';
import 'package:testing/src/models/token.dart';

part 'RestClient.g.dart';

@RestApi(baseUrl: 'https://47b7e274-7abb-45bd-8a25-491c2a4e9d7d.mock.pstmn.io')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/login")
  Future<BaseResponse<Token>> test();
}
