import 'package:login_register_mahasiswa/data/model/mahasiswa_login_entity.dart';

mahasiswaLoginEntityFromJson(
    MahasiswaLoginEntity data, Map<String, dynamic> json) {
  if (json['value'] != null) {
    data.value = json['value']?.toInt();
  }
  if (json['message'] != null) {
    data.message = json['message']?.toString();
  }
  if (json['email'] != null) {
    data.email = json['email']?.toString();
  }
  if (json['nama'] != null) {
    data.nama = json['nama']?.toString();
  }
  return data;
}

Map<String, dynamic> mahasiswaLoginEntityToJson(MahasiswaLoginEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['value'] = entity.value;
  data['message'] = entity.message;
  data['email'] = entity.email;
  data['nama'] = entity.nama;
  return data;
}
