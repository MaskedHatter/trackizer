import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/features/authentication/domain/entities/user_entity.dart';

abstract class UserRepository {

  Future<DataState<UserEntity>> authenticateWithGoogle();
  Future<DataState<UserEntity>> authenticateWithEmail({required String email, required String password});

}