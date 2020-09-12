import 'package:kamus_bahasa_bugis/generated/json/base/json_convert_content.dart';

class KamusResponseEntity with JsonConvert<KamusResponseEntity> {
  bool isSuccess;
  String message;
  List<KamusResponseData> data;
}

class KamusResponseData with JsonConvert<KamusResponseData> {
  String id;
  String indonesia;
  String bugis;
}
