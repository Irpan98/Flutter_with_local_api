import 'package:login_register_mahasiswa/generated/json/base/json_convert_content.dart';

class MahasiswaLoginEntity with JsonConvert<MahasiswaLoginEntity> {
  int value;
  String message;
  String email;
  String nama;
}
