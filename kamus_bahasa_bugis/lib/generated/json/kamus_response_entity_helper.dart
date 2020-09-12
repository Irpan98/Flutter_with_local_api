import 'package:kamus_bahasa_bugis/response/kamus_response_entity.dart';

kamusResponseEntityFromJson(
    KamusResponseEntity data, Map<String, dynamic> json) {
  if (json['isSuccess'] != null) {
    data.isSuccess = json['isSuccess'];
  }
  if (json['message'] != null) {
    data.message = json['message']?.toString();
  }
  if (json['data'] != null) {
    data.data = new List<KamusResponseData>();
    (json['data'] as List).forEach((v) {
      data.data.add(new KamusResponseData().fromJson(v));
    });
  }
  return data;
}

Map<String, dynamic> kamusResponseEntityToJson(KamusResponseEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['isSuccess'] = entity.isSuccess;
  data['message'] = entity.message;
  if (entity.data != null) {
    data['data'] = entity.data.map((v) => v.toJson()).toList();
  }
  return data;
}

kamusResponseDataFromJson(KamusResponseData data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id']?.toString();
  }
  if (json['indonesia'] != null) {
    data.indonesia = json['indonesia']?.toString();
  }
  if (json['bugis'] != null) {
    data.bugis = json['bugis']?.toString();
  }
  return data;
}

Map<String, dynamic> kamusResponseDataToJson(KamusResponseData entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['indonesia'] = entity.indonesia;
  data['bugis'] = entity.bugis;
  return data;
}
