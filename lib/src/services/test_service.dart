import 'package:dio/dio.dart';
import 'package:testing/src/models/base_response.dart';
import 'package:testing/src/models/token.dart';

import 'RestClient.dart';

class TestService {
  Future<BaseResponse> testFuture() async {
    final Dio dio = Dio();
    RestClient client = RestClient(dio);
    var retValue = BaseResponse();
    try {
      BaseResponse<Token> baseResponse = await client.test();
      print(baseResponse);
      return retValue;
    } catch (e) {
      print('de aici');
      print(e);
    }
    return retValue;
  }
}
