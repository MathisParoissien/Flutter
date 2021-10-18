import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserStockage {
  static final _storage = FlutterSecureStorage();

  static const _name = 'name';

  static Future setName(String name) async =>
      await _storage.write(key: 'name', value: name);

  static Future<String?> getName() async => await _storage.read(key: 'name');

  static const _email = 'email';

  static Future setEmail(String email) async =>
      await _storage.write(key: 'email', value: email);

  static Future<String?> getEmail() async => await _storage.read(key: 'email');
}
