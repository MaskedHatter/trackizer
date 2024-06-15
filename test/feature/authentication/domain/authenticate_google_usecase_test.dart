import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/features/authentication/data/model/user_model.dart';
import 'package:trackizer/features/authentication/domain/entities/user_entity.dart';
import 'package:trackizer/features/authentication/domain/usecase/authenticate_google_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() async {
  late AuthenticateGoogleUseCase authGoogleUseCase;
  late MockUserRepository mockUserRepository;

  const testUser =
      UserModel(name: "Ayo", email: 'okuyiga123@gmail.com', profilePic: '');

  setUp(() {
    mockUserRepository = MockUserRepository();
    authGoogleUseCase = AuthenticateGoogleUseCase(mockUserRepository);
  });

  test('Should call repository to run authenticateWithGoogle', () async {
    when(mockUserRepository.authenticateWithGoogle())
        .thenAnswer((_) async => const DataSuccess<UserEntity>(data: testUser));

    final result = await authGoogleUseCase.call();

    expect(result, const DataSuccess<UserEntity>(data: testUser));
  });
}
