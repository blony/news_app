import 'package:dio/dio.dart';
import 'package:news_app/moudle/config.dart';

Dio dio = new Dio();

class PubMoudle {
static httpRequest(method,url, [data]) async {
  try {
    Response response;
    switch (method) {
      case 'get':
        response = await dio.get(Config.baseURL+url);
        break;
      case 'post':
      response = await dio.post(Config.baseURL+url,data:data);
      break;
    }
    return response;
  } catch (err) {
    print(err);
  }
}

}