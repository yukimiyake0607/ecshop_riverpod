import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user.freezed.dart';

final loginUserProvider = Provider(
  (ref) => LoginUser(id: 'abcd1234', name: 'Kinako'),
);

final loginUserNameProvider = Provider(
  (ref) => ref.watch(loginUserProvider.select((user) => user.name)),
);

@freezed
class LoginUser with _$LoginUser {
  factory LoginUser({
    required String id,
    required String name,
  }) = _LoginUser;
}
