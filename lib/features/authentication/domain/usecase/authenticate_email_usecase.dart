import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/core/usecase/usecase.dart';
import 'package:trackizer/core/util/user_details.dart';
import 'package:trackizer/features/authentication/domain/entities/user_entity.dart';
import 'package:trackizer/features/authentication/domain/repository/user_repository.dart';

class AuthenticateEmailUseCase implements UseCase<DataState<UserEntity>, UserDetails> {
  final UserRepository _userRepository;

  AuthenticateEmailUseCase(this._userRepository);

  @override
  Future<DataState<UserEntity>> call({UserDetails? param}) {
    return _userRepository.authenticateWithEmail(
        email: param!.email, password: param.password);
  }
}
