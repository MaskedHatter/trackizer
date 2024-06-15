import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/core/usecase/usecase.dart';
import 'package:trackizer/features/authentication/domain/entities/user_entity.dart';
import 'package:trackizer/features/authentication/domain/repository/user_repository.dart';

class AuthenticateGoogleUseCase implements UseCase<DataState<UserEntity>, void> {
  final UserRepository _userRepository;

  AuthenticateGoogleUseCase(this._userRepository);

  @override
  Future<DataState<UserEntity>> call({void param}) {
    return _userRepository.authenticateWithGoogle();
  }
}
